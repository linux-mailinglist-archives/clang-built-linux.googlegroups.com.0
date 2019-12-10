Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBM5CX3XQKGQEJLPWEJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 87F6E118895
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 13:36:03 +0100 (CET)
Received: by mail-lj1-x238.google.com with SMTP id k20sf255132ljk.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 04:36:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575981363; cv=pass;
        d=google.com; s=arc-20160816;
        b=g7XzVvDtI2kAH+DKdbBVtZNY4rzn5dCD2MTl31TAD3L4AVyXEz3gZQ33Dl/+Cc5w+g
         9ssUW0lbjCw9Bp9V0rEfWmeSLzhmDwqrcHlmyB90UKiorUDYLQqHiKnAkIgTdJpfzT89
         1x1rSv7n1hLZFqYOM67KcOZwxlXqinE4iQsCbZFo9HOcJsprMUv4BXKZcq/ZmeLQIhNB
         kMNz+hVFfv1ObdL7tm1jhCw6OHcIUj7uINCVyp6FVVQZDX+PaGxw4ogM0K9WfNdpbdEK
         5hRCQ5O83H4gIXI+lHvx5c5u/j4rsG8Tk1mdO1iMnHT7QBcM/Fux+8qVqD4auNliIVJ7
         Vb7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=rRXrfco3tsfhliBgKMYUq8EpXWYxIvDZqoXULucJt8U=;
        b=sqAkfNjdUz4qHryeyGyAlCXLraZfGtZuye2I6I4BwO2QM+QXbwiYl3HUMdovITUlEM
         0zKShsoXhGDi6wIDSw340OSael2LWPuSl8j9Gin5HTRMKw1h++gqKwTUYuqpH0NHcMq/
         QmheKmmyCd+vbEaRyT7RAYJYilnoT7+pLFrFwCRS0OswXSOnXNtABECdg/e6BWmfwypP
         bMJyxpWuFmV0DuQjUSBOM59JoY2YIWsGFLvOsYmoXEZGgEFlvi3bZALt6hkavTj4XZUc
         O4VenAcNNARLgBbxfXFv7jgsV5ukDjfpd65h6JbnT79jXV/bj5RvR+z/PgDCZJompwzJ
         vvGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=S9DP6rAt;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rRXrfco3tsfhliBgKMYUq8EpXWYxIvDZqoXULucJt8U=;
        b=PTLPZ3oPgGvF4ITMkrF9rZoj1yy4bOAQNilJiGXMSAkYQ+gV4UCJFD106Zgv+KZTI/
         6d82tVAO3n8/W/CH2WERkHSb2tN8TvUgI8M35pB6TQ4QfsXWY7GaGDfFiC0NT25uXxb8
         uy9EWuUEZQI4dKeWfcwGdPYJytMQXthqfdOS3XwvdxyhvBT/1jPcOCS7Xneqj42loQ8P
         sLr0Q6Jr5DZ+p7w56vfOIilYhx6EoZ1EoiNx71jFQL5Mun60FmoLaoB/ByPoYk+iuz8c
         KG5AyNx9yg+mVBwT1gbciGLio5SB+1ZGyrYvdYFujAVoGzh2fOiPZ7/tuPMJOqw6iJvl
         uFpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rRXrfco3tsfhliBgKMYUq8EpXWYxIvDZqoXULucJt8U=;
        b=TPI4K9lCb6uGEw/iSe3D/ECbpTjr3puLLUBYuL0hOvNM52hW2/vF9deGWFbN4XC88Z
         PbyM9IE2exBt1hSM0TUMKVJFb+/x16M4AMXZzMaon3GDo8EwnZLPDaql0U1m3Pt9g5Cd
         8mq3gL3cmv6V/GTZMQnby8x2HeKaeArKJWw+ryXu6w9vM6hxeTT9WjjchkkZeBnDZEit
         VJabk4wnyLxK3wXENJp/PsnVg5l64eZriX13rJ0iDSTblTlQP80TcujWfUZN80Y3DQvs
         xAbQqM7zbsQli9bWSMqih23l3QUKOzBZZXDWeyaVf1xK6cp8YeIecCrJYp1pQrpw1rMh
         XWug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVSkJVDgQ2ePBE42xEq5F8sowCX/h5kfqVoahITT6JP8qC+HN0Y
	tor3lo/BXCGsA6YmkYofsMg=
X-Google-Smtp-Source: APXvYqyLAIrXCYlQNEouCptpjEjYjhZzaHeYv8rc1ol8X42rRWdiaky9HHO30GUr7irGfP4n7rg7xA==
X-Received: by 2002:a19:dc14:: with SMTP id t20mr18613556lfg.47.1575981363044;
        Tue, 10 Dec 2019 04:36:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1b6:: with SMTP id c22ls2414424ljn.14.gmail; Tue,
 10 Dec 2019 04:36:02 -0800 (PST)
X-Received: by 2002:a2e:9216:: with SMTP id k22mr7647146ljg.52.1575981361997;
        Tue, 10 Dec 2019 04:36:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575981361; cv=none;
        d=google.com; s=arc-20160816;
        b=nbH86eU8icACeb0rxlq6mziTy19Ix6tbiiKDn45A0iCnHvOU9/CnxSXnzL7WkVo+aI
         hNes8DqQ19RQy1QWW0koiAMq4CmJK3sep5h5egk96f9HzoJuRC0HsTvW/XuLRkgOmr4q
         rFdTzeCNeuU0exqTwCcgSXovJJtnaNZQbU1I910Sszq+AM9nRUFBYzIdkEyHfoO9ueci
         tzJCOdkdM9PtSTSjOO3VzYHM8Wf3Di0F0LWsQ0ZZ5uciJ+r3/e+5AUk3lMjwAT4dj88M
         2XMBPHtAAejz/GhryDMeR7V7dG/JOdX35R0aAjlTCnMCvbJAOSYHfuNJBjLf9HKUuIhW
         irnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=Lgl9CkpxoLgGQpfD8yvg6PQDLcKE67cVdLahvnNMUSE=;
        b=ztCg04x4IIWIn11v7dUUWjlA5BdLyhfJO243USACFEaFxeZGDYm32jKcnUyWYTZN/b
         PljAX+0EoRP1YlpbpJb5J9kAH01VxkMM0QDlV1OppNLjrZPxjrqM7p/VLdubSb0+BiIm
         r3HyBVoLyS7I41yUFEqqKDbMXwA+22fEZv1tAON0A8YLO6HUifoHSw49I76VTYIA+Yoc
         TOR0NMTtc03L9Zot8I/p1WOAnA1QBQrbYLGPZk/5ZdBQxO8MpTeP0hQ6Bn8QZYa0wGtC
         MFgU9JPfvvUGf8RXbKPfMLcbw6/vF1x72xETo69Eg10lkssSgwi0nbxH5qmLYxqLCWQU
         WYiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=S9DP6rAt;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id u5si115039lfm.0.2019.12.10.04.36.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Dec 2019 04:36:01 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id t14so2965832wmi.5
        for <clang-built-linux@googlegroups.com>; Tue, 10 Dec 2019 04:36:01 -0800 (PST)
X-Received: by 2002:a1c:e108:: with SMTP id y8mr4852788wmg.147.1575981361080;
        Tue, 10 Dec 2019 04:36:01 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id a78sm2985008wme.9.2019.12.10.04.35.59
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 10 Dec 2019 04:36:00 -0800 (PST)
From: ci_notify@linaro.org
Date: Tue, 10 Dec 2019 12:35:59 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <152744312.4179.1575981360317.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-next-defconfig - Build # 34 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_4178_1094525640.1575981359209"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-aarch64-next-defconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=S9DP6rAt;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::341
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

------=_Part_4178_1094525640.1575981359209
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-master-aarch64-next-defconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-next-defconfig

Culprit:
<cut>
commit b120a822ef107df8dc5b4faf383871aa2449eb92
Author: Georgii Staroselskii <georgii.staroselskii@emlid.com>
Date:   Tue Nov 12 19:15:18 2019 +0300

    ARM: dts: allwinner: Split out non-SoC specific parts of Neutis N5
    
    A new variant of Emlid Neutis has been inroduced. This one uses H3
    instead of H5. The boards are essentially the same. This commit moves
    non-SoC-specific parts out so that the common parts could be reused with
    ease.
    
    Signed-off-by: Georgii Staroselskii <georgii.staroselskii@emlid.com>
    Signed-off-by: Maxime Ripard <maxime@cerno.tech>
</cut>

First few errors in logs of first_bad:
00:00:35 make[2]: *** [arch/arm64/boot/dts/allwinner/sun50i-h5-emlid-neutis-n5-devboard.dtb] Error 2
00:00:35 make[1]: *** [arch/arm64/boot/dts/allwinner] Error 2
00:00:35 make: *** [dtbs] Error 2
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[linux_branch]="282ffdf30a3edfb1ab6873cc7f4dc71e9c7afa31"

Results regressed to (for first_bad == b120a822ef107df8dc5b4faf383871aa2449eb92)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
6126

from (for last_good == 59f3f4dcf68d276ff2ed0245f7c1938403de4c91)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
6126
linux build successful:
all
linux boot successful:
boot

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/34/artifact/artifacts/build-b120a822ef107df8dc5b4faf383871aa2449eb92/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/34/artifact/artifacts/build-59f3f4dcf68d276ff2ed0245f7c1938403de4c91/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/34/

Reproduce builds:
<cut>
mkdir investigate-linux-b120a822ef107df8dc5b4faf383871aa2449eb92
cd investigate-linux-b120a822ef107df8dc5b4faf383871aa2449eb92

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/34/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/34/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/34/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd linux

# Reproduce first_bad build
git checkout --detach b120a822ef107df8dc5b4faf383871aa2449eb92
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach 59f3f4dcf68d276ff2ed0245f7c1938403de4c91
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-next-defconfig

Bisect log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/34/artifact/artifacts/bisect.log/*view*/
Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/34/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-defconfig/34/consoleText

Full commit:
<cut>
commit b120a822ef107df8dc5b4faf383871aa2449eb92
Author: Georgii Staroselskii <georgii.staroselskii@emlid.com>
Date:   Tue Nov 12 19:15:18 2019 +0300

    ARM: dts: allwinner: Split out non-SoC specific parts of Neutis N5
    
    A new variant of Emlid Neutis has been inroduced. This one uses H3
    instead of H5. The boards are essentially the same. This commit moves
    non-SoC-specific parts out so that the common parts could be reused with
    ease.
    
    Signed-off-by: Georgii Staroselskii <georgii.staroselskii@emlid.com>
    Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm/boot/dts/sunxi-h3-h5-emlid-neutis.dtsi    | 170 +++++++++++++++++++++
 .../sun50i-h5-emlid-neutis-n5-devboard.dts         |  95 +-----------
 .../dts/allwinner/sun50i-h5-emlid-neutis-n5.dtsi   |  64 +-------
 3 files changed, 175 insertions(+), 154 deletions(-)

diff --git a/arch/arm/boot/dts/sunxi-h3-h5-emlid-neutis.dtsi b/arch/arm/boot/dts/sunxi-h3-h5-emlid-neutis.dtsi
new file mode 100644
index 000000000000..fc67e30fe212
--- /dev/null
+++ b/arch/arm/boot/dts/sunxi-h3-h5-emlid-neutis.dtsi
@@ -0,0 +1,170 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * DTSI for Emlid Neutis SoMs.
+ *
+ * Copyright (C) 2019 Georgii Staroselskii <georgii.staroselskii@emlid.com>
+ */
+
+#include "sunxi-common-regulators.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	aliases {
+		serial0 = &uart0;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	wifi_pwrseq: wifi_pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		reset-gpios = <&pio 2 7 GPIO_ACTIVE_LOW>; /* PC7 */
+		post-power-on-delay-ms = <200>;
+		clocks = <&rtc 1>;
+		clock-names = "ext_clock";
+	};
+};
+
+&cpu0 {
+	cpu-supply = <&vdd_cpux>;
+};
+
+&reg_usb0_vbus {
+	gpio = <&r_pio 0 9 GPIO_ACTIVE_HIGH>;   /* PL9 */
+	status = "okay";
+};
+
+
+&de {
+	status = "okay";
+};
+
+&ohci0 {
+	status = "okay";
+};
+
+&ohci1 {
+	status = "okay";
+};
+
+&ohci2 {
+	status = "okay";
+};
+
+&ohci3 {
+	status = "okay";
+};
+
+
+&ehci0 {
+	status = "okay";
+};
+
+&ehci1 {
+	status = "okay";
+};
+
+&ehci2 {
+	status = "okay";
+};
+
+&ehci3 {
+	status = "okay";
+};
+
+&mmc0 {
+	vmmc-supply = <&reg_vcc3v3>;
+	bus-width = <4>;
+	cd-gpios = <&pio 5 6 GPIO_ACTIVE_LOW>; /* PF6 */
+	status = "okay";
+};
+
+
+&mmc1 {
+	vmmc-supply = <&reg_vcc3v3>;
+	vqmmc-supply = <&reg_vcc3v3>;
+	mmc-pwrseq = <&wifi_pwrseq>;
+	bus-width = <4>;
+	non-removable;
+	status = "okay";
+
+	brcmf: wifi@1 {
+		reg = <1>;
+		compatible = "brcm,bcm4329-fmac";
+		interrupt-parent = <&r_pio>;
+		interrupts = <0 5 IRQ_TYPE_LEVEL_LOW>;	/* PL5 */
+		interrupt-names = "host-wake";
+	};
+};
+
+&mmc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc2_8bit_pins>;
+	vmmc-supply = <&reg_vcc3v3>;
+	bus-width = <8>;
+	non-removable;
+	cap-mmc-hw-reset;
+	status = "okay";
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_pa_pins>;
+	status = "okay";
+};
+
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
+	uart-has-rtscts;
+	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		clocks = <&rtc 1>;
+		clock-names = "lpo";
+		vbat-supply = <&reg_vcc3v3>;
+		vddio-supply = <&reg_vcc3v3>;
+		shutdown-gpios = <&pio 2 4 GPIO_ACTIVE_HIGH>; /* PC4 */
+		device-wakeup-gpios = <&r_pio 0 7 GPIO_ACTIVE_HIGH>; /* PL7 */
+	};
+};
+
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart2_pins>;
+	status = "okay";
+};
+
+&uart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart3_pins>;
+	status = "okay";
+};
+
+&usbphy {
+	usb0_id_det-gpios = <&r_pio 0 8 GPIO_ACTIVE_HIGH>; /* PL8 */
+	usb0_vbus-supply = <&reg_usb0_vbus>;
+	status = "okay";
+};
+
+&usb_otg {
+	dr_mode = "otg";
+	status = "okay";
+};
+
+&codec {
+	allwinner,audio-routing =
+		"Line Out", "LINEOUT",
+		"LINEIN", "Line In",
+		"MIC1", "Mic",
+		"MIC2", "Mic",
+		"Mic",  "MBIAS";
+};
+
+&i2c0 {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-emlid-neutis-n5-devboard.dts b/arch/arm64/boot/dts/allwinner/sun50i-h5-emlid-neutis-n5-devboard.dts
index c924090331d0..fb96d356055e 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5-emlid-neutis-n5-devboard.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-emlid-neutis-n5-devboard.dts
@@ -15,35 +15,6 @@
 		     "emlid,neutis-n5",
 		     "allwinner,sun50i-h5";
 
-	aliases {
-		serial0 = &uart0;
-	};
-
-	chosen {
-		stdout-path = "serial0:115200n8";
-	};
-
-	connector {
-		compatible = "hdmi-connector";
-		type = "a";
-
-		port {
-			hdmi_con_in: endpoint {
-				remote-endpoint = <&hdmi_out_con>;
-			};
-		};
-	};
-
-	reg_usb0_vbus: usb0-vbus {
-		compatible = "regulator-fixed";
-		regulator-name = "usb0-vbus";
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		enable-active-high;
-		gpio = <&r_pio 0 9 GPIO_ACTIVE_HIGH>;   /* PL9 */
-		status = "okay";
-	};
-
 	vdd_cpux: gpio-regulator {
 		compatible = "regulator-gpio";
 		regulator-name = "vdd-cpux";
@@ -59,33 +30,11 @@
 	};
 };
 
-&codec {
-	allwinner,audio-routing =
-		"Line Out", "LINEOUT",
-		"LINEIN", "Line In",
-		"MIC1", "Mic",
-		"MIC2", "Mic",
-		"Mic",  "MBIAS";
-	status = "okay";
-};
-
-&de {
-	status = "okay";
-};
-
-&ehci0 {
-	status = "okay";
-};
-
-&ehci1 {
-	status = "okay";
-};
-
-&ehci2 {
-	status = "okay";
+&cpu0 {
+	cpu-supply = <&vdd_cpux>;
 };
 
-&ehci3 {
+&codec {
 	status = "okay";
 };
 
@@ -106,42 +55,6 @@
 	};
 };
 
-&mmc0 {
-	vmmc-supply = <&reg_vcc3v3>;
-	bus-width = <4>;
-	cd-gpios = <&pio 5 6 GPIO_ACTIVE_LOW>; /* PF6 */
-	status = "okay";
-};
-
-&ohci0 {
-	status = "okay";
-};
-
-&ohci1 {
-	status = "okay";
-};
-
-&ohci2 {
-	status = "okay";
-};
-
-&ohci3 {
-	status = "okay";
-};
-
-&uart0 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&uart0_pa_pins>;
-	status = "okay";
-};
-
-&usb_otg {
-	dr_mode = "otg";
-	status = "okay";
-};
-
-&usbphy {
-	usb0_id_det-gpios = <&r_pio 0 8 GPIO_ACTIVE_HIGH>; /* PL8 */
-	usb0_vbus-supply = <&reg_usb0_vbus>;
+&i2c1 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-emlid-neutis-n5.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h5-emlid-neutis-n5.dtsi
index 5bec574fa108..7df7308ec9f0 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5-emlid-neutis-n5.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-emlid-neutis-n5.dtsi
@@ -8,66 +8,4 @@
 /dts-v1/;
 
 #include "sun50i-h5.dtsi"
-
-#include <dt-bindings/gpio/gpio.h>
-
-/ {
-	reg_vcc3v3: vcc3v3 {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc3v3";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-	};
-
-	wifi_pwrseq: wifi_pwrseq {
-		compatible = "mmc-pwrseq-simple";
-		reset-gpios = <&pio 2 7 GPIO_ACTIVE_LOW>; /* PC7 */
-		post-power-on-delay-ms = <200>;
-		clocks = <&rtc 1>;
-		clock-names = "ext_clock";
-	};
-};
-
-&mmc1 {
-	vmmc-supply = <&reg_vcc3v3>;
-	vqmmc-supply = <&reg_vcc3v3>;
-	mmc-pwrseq = <&wifi_pwrseq>;
-	bus-width = <4>;
-	non-removable;
-	status = "okay";
-
-	brcmf: wifi@1 {
-		reg = <1>;
-		compatible = "brcm,bcm4329-fmac";
-		interrupt-parent = <&r_pio>;
-		interrupts = <0 5 IRQ_TYPE_LEVEL_LOW>;	/* PL5 */
-		interrupt-names = "host-wake";
-	};
-};
-
-&mmc2 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&mmc2_8bit_pins>;
-	vmmc-supply = <&reg_vcc3v3>;
-	bus-width = <8>;
-	non-removable;
-	cap-mmc-hw-reset;
-	status = "okay";
-};
-
-&uart1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
-	uart-has-rtscts;
-	status = "okay";
-
-	bluetooth {
-		compatible = "brcm,bcm43438-bt";
-		clocks = <&rtc 1>;
-		clock-names = "lpo";
-		vbat-supply = <&reg_vcc3v3>;
-		vddio-supply = <&reg_vcc3v3>;
-		shutdown-gpios = <&pio 2 4 GPIO_ACTIVE_HIGH>; /* PC4 */
-		device-wakeup-gpios = <&r_pio 0 7 GPIO_ACTIVE_HIGH>; /* PL7 */
-	};
-};
+#include <arm/sunxi-h3-h5-emlid-neutis.dtsi>
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/152744312.4179.1575981360317.JavaMail.javamailuser%40localhost.

------=_Part_4178_1094525640.1575981359209--
