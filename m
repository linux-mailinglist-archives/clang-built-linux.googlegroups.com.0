Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB3GTYX3AKGQEN5CIF3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE551E8844
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 22:00:45 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id a4sf1460638wrp.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 13:00:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590782444; cv=pass;
        d=google.com; s=arc-20160816;
        b=E2V7uZ4PVA6rFb84trZDm+wGCvS2hWAOcWxEgiNNjwLrGA2JOorFSMCJq39koijcmt
         UCScnRGP8pXcGv+k9kO/MTzYEsGy+jG8mmx06GpOUC9uttZKxQavbfllDI13VUunqs/M
         STFOx9eeBUnF2fbl/vxPFENWJoSwcPWW/m7Zi2E1xuGahDsACYFkrH/qQEJEfsEpgTFW
         pKDOvvQySka0o9akb3Rk0Qnnkv0DXL5fS0IH/p8qaR8tTuE1Dk4+/EkmnzCxbOleGWLa
         x8+rtFiBB3TxrRxh1/EsYXEQ92A3C0UDaMRh/rab7xjxG4igORgBHQm1zG+fETkft8ij
         PD/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=2ZZwGE1P60s2JEf4ZyRdYH2UERYZ9RwDKCX4JX+r4ic=;
        b=PA2vIwux1adblR1nZAhZjmTlaE+rMSeVpDfBO22XElhXDUN1zKoLRxxwvKaG3k4cKh
         rxJGNEbrqh25UZNxyOC0RarZAd18f31Tiu/JZLkrnPpncRAVyHknxhcclM/xLEor1jFB
         YXKN9+dwL3xUPpPcf7xgKBgSyDE4RfFdxOzkpZbAdxeNLEIHrH+99/ypv5QGsGW3EQ7U
         enE4wdf0pkn6uXVcU7o2tfs6QExmH1YXqkWKNAVjbCQ4fkhuEFPc9aAsi/OtfzzLYU/U
         fCKI2zYPdpCYmGjUjnnpx3rG7Ge4j+gU1cnH6HaNRk6Ltwwk80wtsEy5WgA0wdwr+EYK
         flBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2ZZwGE1P60s2JEf4ZyRdYH2UERYZ9RwDKCX4JX+r4ic=;
        b=chF+7kjcu+b7PQqdghuALnaE/vApUS290s0V+969iZj+cVa1CWS62H8eX6/D5ELKMG
         C5I14Y/yhMYETomAV28CFsaR+lSFtx+tmzdoTbXh0MmtLFc2cionNO6sQ+sjaKSkozjq
         t6DLrfVvS+0mqJLIxYtBaCpU0MmZbemGPnY15tJqNzyL3nRI6Rb7yJwdgv9FjDzA/1eG
         TcK6khaZtq8hfMCX0gclN5a7JZYHy/+hj1vIe/la+iMkC817YQsdk5Uf4FiY7T2x1idT
         tC7o00ajbRmIEkNrvQ3JJjbckjnQUPmp3e6LK882iH5G4V1Zve7RCa/I6QBJ8joUsu3I
         gi2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2ZZwGE1P60s2JEf4ZyRdYH2UERYZ9RwDKCX4JX+r4ic=;
        b=n0Ai+VYzhnCudcB/YzJ6PrCnPmyTc5mMwr+oVpa1gxBKxlzn10mAEnc8wrFOzhic6d
         GwQM0y1Dwk5Y+a55vIUtgBetr16+b4lDhFlWLaJ6XT04I3m/eiVzdIi2CZ+Mh74TXFde
         +NxJNsqQPrA20CFkaFOInb1cXUGRkEffIjeTckzLMkLY+dOBXvDr8fioaIRpZwDbH0IU
         +QFYJoajdO5Wnm/wtZLw0FwJuxp9h8U1KHESl8u/b0yDy971ANz+3lECRKEDy5OvTqNy
         zHwdo57hdd5mkhpPSLkajMWh4j5foRlqslWKbMtdkSxez7oOqBTSbFPTTWvh2k3B1gUQ
         gs7g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532x546U4ejUeKHaQTvp3pex3dVoB9BIgBgfsP3vaaZCkxjJfXbe
	oO3AkUHO28gziGG9HjqmZRU=
X-Google-Smtp-Source: ABdhPJzEBXEug2/pwmQCEgVjPS1urd4IouJ+eHWkhqAKXrMtEAlInem/u/xxk1nf8WAvRM7CtxasDg==
X-Received: by 2002:adf:c651:: with SMTP id u17mr10579215wrg.416.1590782444779;
        Fri, 29 May 2020 13:00:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:da46:: with SMTP id r6ls4281362wrl.3.gmail; Fri, 29 May
 2020 13:00:44 -0700 (PDT)
X-Received: by 2002:adf:f6ce:: with SMTP id y14mr10696351wrp.90.1590782444375;
        Fri, 29 May 2020 13:00:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590782444; cv=none;
        d=google.com; s=arc-20160816;
        b=Q2MDJSmbe1PfBa+AlUHhh+Zm77Mf+l2wAiZ1PCrwasBxhi4w60Wmm1g4RN7NwNdasw
         AFvospq7mDhpnm8Xz+WomLc6hxq7+p6tIszK/9k/mypvQUjuCUQ/We0mKZfKQPPWpGRx
         V3kC6+EdoAR9yfe9tlNcNJq2CwGjPaEa7Oc5DtkNKyTgDmO+rkeE/5HJ/FE7ae/PLY6r
         R8KKw5JN3O9uk+mv6BMjBW3H99ArV0BenkT7d21cT2PuCsBfOOPOVTtIwQ6ra56vt3es
         61c0IS5YdSHvj1x7PluZKN+ctxxTCFd6omt1OEyYn0N/xy6e7+gaG84XrWE4j1sRTdHJ
         6Wlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=ojEwX68x6AE5B9RV1nEwBt3fwvraalyTrcSDNgY3II8=;
        b=yk1EjdN2MVsggCPMn4+CjDgCQHTrrOdF8qezvJk/JuVuWAYsCVuZDFNcs/720PV6cX
         d7eX2mtl1tIbfBk5yAnDCeFuQHnbmX86GuXpRKMiz1ogC4HVDHVg445S8L/Dd9DQ5adc
         DS3cw5QESahfeBGEp/PNU0otwH8ctu/U+SkSP5zFwaBn2/k0KGNC6vLs13NwVzPIgfXQ
         C9m5uZkGxGD0DaSoeuWIYLXo7EcWyid1fJq5ign2B+PolzJnXJI/7LvEY5lhY7mgZzSU
         Z+Gl5TWCkJgUWnaGW5rLgTuBAscqJrTREyIDSW7STBhPNDRJZbu5b1i7igUu0y6+cNQX
         gvDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id m17si224702wrj.1.2020.05.29.13.00.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2020 13:00:44 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.10;
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1N2E9Y-1j0dym29Bm-013cyq; Fri, 29 May 2020 22:00:42 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH 9/9] staging: media: atomisp: add PMIC_OPREGION dependency
Date: Fri, 29 May 2020 22:00:31 +0200
Message-Id: <20200529200031.4117841-9-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200529200031.4117841-1-arnd@arndb.de>
References: <20200529200031.4117841-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:L0tAuZKqS3GUSyinflTIVejQer/+gUpZEMrHiizAn10eYDwYWoP
 ee/FEolfmeLefXoBmI6xD3EMOEsLS73UAjlN5kU0b9Hnbu3uEmAntK5dpuzgQzzWjgQ5+uA
 dCKcmC7jc3MIX9nWCN1NeMpHfr3M+gi9M73jO9QP/9K6UURab9n8KHZ4TAsN88OPAAfDQ56
 fMA50/pxymZgPMFMU5egg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:n8lBOdB9moc=:gkSwrbVAcyBUdJIk/gy8rt
 z4c67AMI2vRcR9vlmbSsMYc2KDn2J0UfzfG5FHt5lV4uAjGr7+F7uTpeYrWn7uuL8g62oXTYy
 wBS7GN3THgQGHnI000soH0B2bOv2ERsfmkRjoVyjy7VlMrD28yDfI8ggaL850JAUxlurig8qG
 Gi3In92t6AC0XHB2dqYU31gz9zgdlKY9G1KjywOjaWXUNC2OvFa1Wz4brx5h6zJrTkJEwlS0E
 SSazvtRsynsPhxjYr5MuWibi1uWq3eN5kprruDdVOpmCxdOC/5mxwcb6XbpJFMyoGR3VTURo7
 PxDqwMD3d5RHWSkXyQHnZjWG3IWDQmeJZ861rwbf+NC3PCDe+X1wu1nTyXbMAtjQPjErjfSzo
 sK8KrpqE0Fgh8sCTVPHR8sH3Xb/iDDMfAJPE0ygxhqgjPuV0GsoXj3AtAUP739N0ok7CPh2YF
 /sybDxaavuMv1Zcj3p5Rd4411Z98rhY+mdgoYbWis+E6LkzAHNlKiCRj2WaFiPP3ZIC8aTzzj
 sj1izhMZWloGLOg0PwaPB7qcPnFaJ6wKL1GyJUdlC/8bva2Q/wBc7GOWQ/DrhFkkBiHYb2L2k
 JW3IcVYw+C62G9cgdkao6qQRnLjcXqmQQ0xTfXfRFbT3mSzwxPImNc9ZMB94ozM7wzTZttrXH
 RLx7iwwwOD6ut5hmCkKPms2ieS1ujXE6B04Ab7C1jvAf9JdTQDeTq/rftQndTYIUbnjfJxHuk
 TFtJJNj/3xJyLbTYEHF2qLvZNNPFG7/rWTf14k9YzjDmE/q7D1sZ6aAVLhv6cRR+j216RnzDa
 7gCKpfl8V4yXUtDX/VUorCL6JpIiG89ES774k7f5HLZnpeMSjU=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.10 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Content-Type: text/plain; charset="UTF-8"
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

Without that driver, there is a link failure in

ERROR: modpost: "intel_soc_pmic_exec_mipi_pmic_seq_element"
[drivers/staging/media/atomisp/pci/atomisp_gmin_platform.ko] undefined!

Add an explicit Kconfig dependency.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/staging/media/atomisp/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/media/atomisp/Kconfig b/drivers/staging/media/atomisp/Kconfig
index c4f3049b0706..e86311c14329 100644
--- a/drivers/staging/media/atomisp/Kconfig
+++ b/drivers/staging/media/atomisp/Kconfig
@@ -11,6 +11,7 @@ menuconfig INTEL_ATOMISP
 config VIDEO_ATOMISP
 	tristate "Intel Atom Image Signal Processor Driver"
 	depends on VIDEO_V4L2 && INTEL_ATOMISP
+	depends on PMIC_OPREGION
 	select IOSF_MBI
 	select VIDEOBUF_VMALLOC
 	---help---
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200529200031.4117841-9-arnd%40arndb.de.
