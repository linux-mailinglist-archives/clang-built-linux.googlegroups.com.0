Return-Path: <clang-built-linux+bncBDM6PI5M4IFRB2UXTWEAMGQEARN2DMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E14D3DCE8E
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Aug 2021 03:35:39 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id f13-20020a19380d0000b029037ad1141c33sf6037309lfa.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 01 Aug 2021 18:35:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627868138; cv=pass;
        d=google.com; s=arc-20160816;
        b=gDoNHH4o2lhnn1gthVvT6Dda7ZDu131iZozr3LZm3tL2iWsthDu0WKsypj4uXNPOMb
         lUhUvHhmDmg9EnumDYgjPG2A8z2UCt1aP8qYaqoW7AIvlYIH+coabcEK2zC27gyXrm66
         uMbnqzwjX3Gc1piKWH2Nns44bQTiS4DRlTK3KNg+f2Lz+CRUerg/9O2h1yB4ftr2lyTp
         8KPKk9M3Rosdm3tjVo9wyCqAP6zCr5oZKWT0qosK7JyAjdptucbPGRg85VJKqbERvxh0
         O2g32F8M/NMG7UIskr/bgbOXK6HIOkktJk/BINsxnBSLi7q4PH1YPaeLGEKrXqb7uHF4
         7Hyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=cmphRrhBxDKmipIzsGjGF+fQ3E3hEuAhD52jMQ40hQA=;
        b=HcRnC29ehiyn/eEGX2eaEPqi7hjzcJrhA07sx0ToD2BfcVMO16OBdVaM/gxdaN9Wzm
         gTg1/K0LCKbQeX4DPvZnotgrHVUf/HcOqAhGLe+T+ubwrOTZvOCYNUPxiEv62hfo2Ghx
         TqAboB8hjQM6zmb0uJR7+xFM+otVvS822zSsn42GYVSqNKupo0XRxsWXAxekoBHOSjB2
         wWZXLTuA2NXvn76+naqCQHq4pA5K5TFv54t5eqONmv8Kbp5axb97reS7OBpPeWmB5Trm
         xdneulnXSHno6ko0hJg0zu6Hg6akSwoe0ztAFn6qr2wb9EOQPYS7+RYKH7w6wxhxOvSu
         CDHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="NrT5GLd/";
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42c as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cmphRrhBxDKmipIzsGjGF+fQ3E3hEuAhD52jMQ40hQA=;
        b=ThM8AllK3N4Dg5GEUpQqsn6xci/jMTxTXZ0l1FK3v/A9fcMMk4lqV3EG7RkVY6UTT7
         IziCzo8MHu8ftV16+/LufwGlGKRwQFIoQbNhsroB9ACU3wSb1sdd/Ry5TxrAi6zwli1T
         vJJmmNM5OEEAA2DAMPYTcdoRNMlE4rFUOVRDoDNIpb8IxxtGlltQ6iSnjna4GWzkhDgl
         K7c1WTBM2ejzg00JlQF5DiMtovOysCKoc90rcfGkNwROdIqZ5daSmEQBMmY+FwjKuc4V
         qsiP0qmGl2TrrJiC3ZL9sx8UwdxlJyCqyR92wF/qVClLMktmquBDi1jW8VV3pGj3zWTu
         vhxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cmphRrhBxDKmipIzsGjGF+fQ3E3hEuAhD52jMQ40hQA=;
        b=cIw8vpf/OoxQ9XJRekxr+qHVZBXYeDt/29XTpbWJomcv4Kx76mL4vJQfYAkoMYgLlW
         CD504HCCN0QsNzvYY0VQZghgNYI1q97zGYWqjhySJyGdApbOp+Te+gcvIVyrn9ZCMotH
         hxO3p3QAUVsX2e9rTXuI/6Q+q4mCFyh8Kq8fu880/7n72iYrUaO3olZvRovZ35gPvMoj
         2Uxu4iJ0WMrLNFxn9hqy3YkeYbPiHYcxOGregXP+Ch6pY+P/8jYtyfCYPERZvH1eOERg
         8LbmXI8g8yboaThqkQj5+iUWmH1wT9aztIRiIwZyaPS1wmbRzUk4lIsTfDkekeL4YWoE
         Z0nQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533wpXtSJHsH34ezTLvxj1d2n0Zsuk3pVIZTn0qqcZFyOHLD3NH6
	w3euyORxJI67AXoH7mFxz9I=
X-Google-Smtp-Source: ABdhPJwdIKmmNaKQ/aCJ8TZFyuxphiuOY1KA6s43H50JL4MxmnMMUHCoYqFj5lFZjTuCXAh/Raz0bg==
X-Received: by 2002:a2e:740f:: with SMTP id p15mr9686928ljc.42.1627868138694;
        Sun, 01 Aug 2021 18:35:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:b89:: with SMTP id b9ls1936030lfv.1.gmail; Sun, 01
 Aug 2021 18:35:37 -0700 (PDT)
X-Received: by 2002:a19:f110:: with SMTP id p16mr10932406lfh.584.1627868137660;
        Sun, 01 Aug 2021 18:35:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627868137; cv=none;
        d=google.com; s=arc-20160816;
        b=q6gMwHXvIfOGGhJmg+GrXZqL+HBu8aqsu9v8sxf+R4nQ4lk404QnL2l/goPyhff3Vw
         vJEibODml8YePzXieLRXx1ox0i3kg0mOwWUoMarP0qTomFlA/iBpOm8lQZfXzzOwl311
         aBhXIg+urPYMd6YE8BGkH8MkKiN0n1/b2mEQaI1BWQlXxizq/G6kmVnoCRyXTtGrkXn1
         JPCkbgeKosXMAmZ6y234nQL81hU7M2u1ZcjPBlkIsQ01wb9IsRsuyP4zQlkpSdiGqgJO
         z4zorOQTVR79IYh11nGWdKGQXGaWb5WQLKYctY2+Hi6GuPOgx+xBoui5FR6/lpZtAMew
         hAnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=wrBrhLWz8uCd6JRLlDXNaYpA+1vDri380nmMfcZlOBg=;
        b=XG6jGrrSZR4AvdEPTpBXvtaBIEdURDXxEKHHfZcT+SoxF6+1b2y85a1JGupHwjMoJZ
         nJrbOoCtKvr32VYaOfSimDCwJ72w3gqqLjQwkWYONMRkvXXpJXeQISDNKX0gwlhahVTp
         VhPsHHRfe+edZKTUXyiSqBigu2o13UxMHliTsy0+0dbOSCk61f6Zgp4iiQ2TY3G6d+5t
         zZ2ozwls+uhVAeJCq0Y5TJGn14cBJECNxB8eurcGlz/PkrKEzKVjr37+BsDyXiOOzOrO
         IEyLd2blp0QWPbCTpNNXeXYcdPrut0xjj2e4ghzbNx0FNwO8TWLVCyA2nP3s2Ys3qg5l
         eYBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="NrT5GLd/";
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42c as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com. [2a00:1450:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id z24si502522lfq.5.2021.08.01.18.35.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Aug 2021 18:35:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42c as permitted sender) client-ip=2a00:1450:4864:20::42c;
Received: by mail-wr1-x42c.google.com with SMTP id d8so19492258wrm.4
        for <clang-built-linux@googlegroups.com>; Sun, 01 Aug 2021 18:35:37 -0700 (PDT)
X-Received: by 2002:adf:f112:: with SMTP id r18mr14469710wro.160.1627868137082;
        Sun, 01 Aug 2021 18:35:37 -0700 (PDT)
Received: from 172.17.0.5 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id r133sm9088669wma.18.2021.08.01.18.35.36
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Aug 2021 18:35:36 -0700 (PDT)
From: ci_notify@linaro.org
Date: Mon, 2 Aug 2021 01:35:36 +0000 (UTC)
To: tcwg-validation@linaro.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
	linaro-toolchain@lists.linaro.org,
	clang-built-linux@googlegroups.com, arnd@linaro.org
Message-ID: <1584769729.679.1627868136620@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-aarch64-next-allmodconfig - Build # 26 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_678_609145514.1627868136196"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-aarch64-next-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="NrT5GLd/";       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42c
 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

------=_Part_678_609145514.1627868136196
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-release-aarch64-next-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-release-aarch64-next-allmodconfig

Culprit:
<cut>
commit 3d463dd5023b5a58b3c37207d65eeb5acbac2be3
Author: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Date:   Thu Jul 29 12:40:19 2021 +0200

    nfc: fdp: constify several pointers
    
    Several functions do not modify pointed data so arguments and local
    variables can be const for correctness and safety.  This allows also
    making file-scope nci_core_get_config_otp_ram_version array const.
    
    Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
    Signed-off-by: David S. Miller <davem@davemloft.net>
</cut>

Results regressed to (for first_bad == 3d463dd5023b5a58b3c37207d65eeb5acbac2be3)
# reset_artifacts:
-10
# build_abe binutils:
-9
# build_llvm:
-5
# build_abe qemu:
-2
# linux_n_obj:
21802
# First few build errors in logs:
# 00:03:45 drivers/nfc/fdp/fdp.c:116:60: error: passing 'const char *' to parameter of type '__u8 *' (aka 'unsigned char *') discards qualifiers [-Werror,-Wincompatible-pointer-types-discards-qualifiers]
# 00:03:45 make[3]: *** [drivers/nfc/fdp/fdp.o] Error 1
# 00:03:49 make[2]: *** [drivers/nfc/fdp] Error 2
# 00:04:01 make[1]: *** [drivers/nfc] Error 2
# 00:09:25 make: *** [drivers] Error 2

from (for last_good == c3e26b6dc1b4e3e8f57be4f004b1f2a410c5c468)
# reset_artifacts:
-10
# build_abe binutils:
-9
# build_llvm:
-5
# build_abe qemu:
-2
# linux_n_obj:
29857
# linux build successful:
all
# linux boot successful:
boot

Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-aarch64-next-allmodconfig/26/artifact/artifacts/build-c3e26b6dc1b4e3e8f57be4f004b1f2a410c5c468/
Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-aarch64-next-allmodconfig/26/artifact/artifacts/build-3d463dd5023b5a58b3c37207d65eeb5acbac2be3/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-aarch64-next-allmodconfig/26/

Configuration details:
rr[linux_git]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git#cb163627e6d32dbaca4d89b2292788cee895b06d"

Reproduce builds:
<cut>
mkdir investigate-linux-3d463dd5023b5a58b3c37207d65eeb5acbac2be3
cd investigate-linux-3d463dd5023b5a58b3c37207d65eeb5acbac2be3

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-aarch64-next-allmodconfig/26/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-aarch64-next-allmodconfig/26/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-aarch64-next-allmodconfig/26/artifact/artifacts/test.sh --fail
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

# Save baseline build state (which is then restored in artifacts/test.sh)
mkdir -p ./bisect
rsync -a --del --delete-excluded --exclude /bisect/ --exclude /artifacts/ --exclude /linux/ ./ ./bisect/baseline/

cd linux

# Reproduce first_bad build
git checkout --detach 3d463dd5023b5a58b3c37207d65eeb5acbac2be3
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach c3e26b6dc1b4e3e8f57be4f004b1f2a410c5c468
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-aarch64-next-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-aarch64-next-allmodconfig/26/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-aarch64-next-allmodconfig/26/consoleText

Full commit (up to 1000 lines):
<cut>
commit 3d463dd5023b5a58b3c37207d65eeb5acbac2be3
Author: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Date:   Thu Jul 29 12:40:19 2021 +0200

    nfc: fdp: constify several pointers
    
    Several functions do not modify pointed data so arguments and local
    variables can be const for correctness and safety.  This allows also
    making file-scope nci_core_get_config_otp_ram_version array const.
    
    Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
    Signed-off-by: David S. Miller <davem@davemloft.net>
---
 drivers/nfc/fdp/fdp.c | 18 +++++++++---------
 drivers/nfc/fdp/fdp.h |  2 +-
 drivers/nfc/fdp/i2c.c |  6 +++---
 3 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/nfc/fdp/fdp.c b/drivers/nfc/fdp/fdp.c
index 3f5fba922c4d..c6b3334f24c9 100644
--- a/drivers/nfc/fdp/fdp.c
+++ b/drivers/nfc/fdp/fdp.c
@@ -52,7 +52,7 @@ struct fdp_nci_info {
 	u32 limited_otp_version;
 	u8 key_index;
 
-	u8 *fw_vsc_cfg;
+	const u8 *fw_vsc_cfg;
 	u8 clock_type;
 	u32 clock_freq;
 
@@ -65,7 +65,7 @@ struct fdp_nci_info {
 	wait_queue_head_t setup_wq;
 };
 
-static u8 nci_core_get_config_otp_ram_version[5] = {
+static const u8 nci_core_get_config_otp_ram_version[5] = {
 	0x04,
 	NCI_PARAM_ID_FW_RAM_VERSION,
 	NCI_PARAM_ID_FW_OTP_VERSION,
@@ -111,7 +111,7 @@ static inline int fdp_nci_patch_cmd(struct nci_dev *ndev, u8 type)
 }
 
 static inline int fdp_nci_set_production_data(struct nci_dev *ndev, u8 len,
-					      char *data)
+					      const char *data)
 {
 	return nci_prop_cmd(ndev, NCI_OP_PROP_SET_PDATA_OID, len, data);
 }
@@ -236,7 +236,7 @@ static int fdp_nci_send_patch(struct nci_dev *ndev, u8 conn_id, u8 type)
 
 static int fdp_nci_open(struct nci_dev *ndev)
 {
-	struct fdp_nci_info *info = nci_get_drvdata(ndev);
+	const struct fdp_nci_info *info = nci_get_drvdata(ndev);
 
 	return info->phy_ops->enable(info->phy);
 }
@@ -260,7 +260,7 @@ static int fdp_nci_request_firmware(struct nci_dev *ndev)
 {
 	struct fdp_nci_info *info = nci_get_drvdata(ndev);
 	struct device *dev = &info->phy->i2c_dev->dev;
-	u8 *data;
+	const u8 *data;
 	int r;
 
 	r = request_firmware(&info->ram_patch, FDP_RAM_PATCH_NAME, dev);
@@ -269,7 +269,7 @@ static int fdp_nci_request_firmware(struct nci_dev *ndev)
 		return r;
 	}
 
-	data = (u8 *) info->ram_patch->data;
+	data = info->ram_patch->data;
 	info->ram_patch_version =
 		data[FDP_FW_HEADER_SIZE] |
 		(data[FDP_FW_HEADER_SIZE + 1] << 8) |
@@ -610,9 +610,9 @@ static int fdp_nci_core_get_config_rsp_packet(struct nci_dev *ndev,
 {
 	struct fdp_nci_info *info = nci_get_drvdata(ndev);
 	struct device *dev = &info->phy->i2c_dev->dev;
-	struct nci_core_get_config_rsp *rsp = (void *) skb->data;
+	const struct nci_core_get_config_rsp *rsp = (void *) skb->data;
 	unsigned int i;
-	u8 *p;
+	const u8 *p;
 
 	if (rsp->status == NCI_STATUS_OK) {
 
@@ -691,7 +691,7 @@ static const struct nci_ops nci_ops = {
 int fdp_nci_probe(struct fdp_i2c_phy *phy, const struct nfc_phy_ops *phy_ops,
 			struct nci_dev **ndevp, int tx_headroom,
 			int tx_tailroom, u8 clock_type, u32 clock_freq,
-			u8 *fw_vsc_cfg)
+			const u8 *fw_vsc_cfg)
 {
 	struct device *dev = &phy->i2c_dev->dev;
 	struct fdp_nci_info *info;
diff --git a/drivers/nfc/fdp/fdp.h b/drivers/nfc/fdp/fdp.h
index dc048d4b977e..2e9161a4d7bf 100644
--- a/drivers/nfc/fdp/fdp.h
+++ b/drivers/nfc/fdp/fdp.h
@@ -23,7 +23,7 @@ struct fdp_i2c_phy {
 
 int fdp_nci_probe(struct fdp_i2c_phy *phy, const struct nfc_phy_ops *phy_ops,
 		  struct nci_dev **ndev, int tx_headroom, int tx_tailroom,
-		  u8 clock_type, u32 clock_freq, u8 *fw_vsc_cfg);
+		  u8 clock_type, u32 clock_freq, const u8 *fw_vsc_cfg);
 void fdp_nci_remove(struct nci_dev *ndev);
 
 #endif /* __LOCAL_FDP_H_ */
diff --git a/drivers/nfc/fdp/i2c.c b/drivers/nfc/fdp/i2c.c
index 98e1876c9468..051c43a2a52f 100644
--- a/drivers/nfc/fdp/i2c.c
+++ b/drivers/nfc/fdp/i2c.c
@@ -36,7 +36,7 @@
 	print_hex_dump(KERN_DEBUG, prefix": ", DUMP_PREFIX_OFFSET,	\
 		       16, 1, (skb)->data, (skb)->len, 0)
 
-static void fdp_nci_i2c_reset(struct fdp_i2c_phy *phy)
+static void fdp_nci_i2c_reset(const struct fdp_i2c_phy *phy)
 {
 	/* Reset RST/WakeUP for at least 100 micro-second */
 	gpiod_set_value_cansleep(phy->power_gpio, FDP_POWER_OFF);
@@ -47,7 +47,7 @@ static void fdp_nci_i2c_reset(struct fdp_i2c_phy *phy)
 
 static int fdp_nci_i2c_enable(void *phy_id)
 {
-	struct fdp_i2c_phy *phy = phy_id;
+	const struct fdp_i2c_phy *phy = phy_id;
 
 	fdp_nci_i2c_reset(phy);
 
@@ -56,7 +56,7 @@ static int fdp_nci_i2c_enable(void *phy_id)
 
 static void fdp_nci_i2c_disable(void *phy_id)
 {
-	struct fdp_i2c_phy *phy = phy_id;
+	const struct fdp_i2c_phy *phy = phy_id;
 
 	fdp_nci_i2c_reset(phy);
 }
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1584769729.679.1627868136620%40localhost.

------=_Part_678_609145514.1627868136196--
