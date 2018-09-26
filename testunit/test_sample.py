import os

def test_answer():
    os.system("sh load_env.sh")
    os.system("/opt/prod/AGILEPIPE/grb_gw/grb_gw_new.py /opt/prod/AGILEPIPE/grb_gw/grb_example.conf")
    with open('GCN_GRB_FERMI_GBM_559561595_0_207524_GRB_Fermi-GBM_GRB_100s_464953790.54_464953890.54.sigma', 'r') as content_file:
        content = content_file.read()
        l = content.split()[0]
        b = content.split()[1]
        sqrtts = content.split()[2]

    os.system("rm GCN* AG_select5.par")

    assert float(l)==289.917335
    assert float(b) == -4.456881
    assert float(sqrtts) == 0
