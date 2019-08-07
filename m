Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBT5FVTVAKGQEUUGOOAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1708529D
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Aug 2019 20:05:04 +0200 (CEST)
Received: by mail-ed1-x53d.google.com with SMTP id f3sf56576974edx.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Aug 2019 11:05:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565201104; cv=pass;
        d=google.com; s=arc-20160816;
        b=0gwi0jEHPo8woCgccX6tDY9VR9a5QMOQ1vsZWXPNOZ595DIN3SmX3kUShX+6XWhKGa
         3NUmFJYx340nbyK7+UMFQhuHkGAOF+K6Fk7Togun3Um1G1JOZU8jEctAxLnIEo8Zp2Wc
         3MXijcIjRhnP+FMRtdlaRYBv5o81RMuhiydG/k9Sc/4IJv4+PPc6Q53cWryrHHxOW8ho
         IBOl4P3P/FfD/NeP/F8e/h7dFKAgHiU9LHyK16Hw5zPqIa6Ju85laHwnX7Lc/Dh49TLU
         KQeXYNH1eOAwdsWX3R46o5B5h2KhxCwp+0W8+0DKbZubdP+0dqiaPBgYJsnj2Lax2pSB
         +kcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=p+ifs1OHrEFb9VmhM4ngT9qe3c+p5IbPW5BDVvV5Dt8=;
        b=VoTsqGPZMO5wqxk/regOnEqh0yGRmpwECXf8KXO7JObFElrnJeaXuCzcTiqQSarOAj
         Hw1C0ecQ6GUIAjXju5UlnNemidZJgPcx+WBxown9KMeHATuurbWvaNaOO7xWWDGUIBtF
         zNpwixt36CUcd2OQbz3cabAZNQimNxMjsrNT5Dv6qJJ9ePhrsKS0WDQOc+CLeEL+akrk
         +xJ08WkZkM8T+xUJ8br17uDyxPJ+4yJp4eMW9FS0E1qaEbW8jZvXXxjJGByyhlP1HFA8
         UJvV1Nxt5hILvVh+BlYYYVM63azLEc1Ki+U2H1emWR6nIm7am2MgCXqaHsueQwqI6SSw
         cacQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LFSLeJHF;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p+ifs1OHrEFb9VmhM4ngT9qe3c+p5IbPW5BDVvV5Dt8=;
        b=OMWOhqhlj0MVoIz5Z0o7LtdP5qypX/fGYjGFNE0z8tl4n4tW5m2RqdXs2L29AIB9CK
         mQ7j1l5feKPZ044ec/9Emqpfi2K5TVGo0HU72PTdkWVLWGAm69YNPEdk5gBdZjPcM+pT
         9rSnLDQbeDR02w34yWnSmt+rOMt0K1NfkwdMsH5yEyzg+BMlbnPxAQToTf9j6aBdD6dh
         yT0kjzTZShxx3sHviR56AGRJsr+Wkbu5Jjj22ZpPhD2aMUrAOMhvgOCDSf954oOR6Sxe
         RycRwWsbBwp/aA+4SxDNIg1TI7CSzLmdWVHKLHALS74NasiGNsBhJA5GCnOA8j9Cj1Bv
         R0KQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p+ifs1OHrEFb9VmhM4ngT9qe3c+p5IbPW5BDVvV5Dt8=;
        b=SoFr9MjCH/tJ/wny5iZq+pDSdXONSlTpv4vz2zp6Eo2vzK4xn9pPuJqnxBPblMgvMH
         bi6MBXICNMX7QfIJoRhL2SuO1eILeQYRCF+7L9s9at1vv72wHuR/Mf24ZL9lSQQqBT/7
         2c6RG4hI+CAV7UKNpQMnNoX8lDZ7J6wx6P8BvPew61lfXy9RKakHwz3FtksictxhUiVn
         ILQe/XD1Wdnav8ExmdfWxa+eToa+JBhVvYOT0+QOxgHHu6ovCE7g/Gpt8QKkRLE7gGVd
         RhG0YnCZaKoL60+C3YH5hRWSIVhvSJtrwwtbFeKdQfVEaeQeyEnuKcBol72MVZgpkxl5
         77YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p+ifs1OHrEFb9VmhM4ngT9qe3c+p5IbPW5BDVvV5Dt8=;
        b=sQ3W0tDtIXEW6lgutwnZ8VD3v7MXFX8FFTKnyURq0vRVxh+vgAe0X9iagKOX4YZ5/C
         w14THZqvMHEN1vC+7yrq9qzV16/MGS3daceRb16931NT1oMTIGVNcJ2Z4Khv8gQTsHtR
         dhtVFWJ3G9JroFevENWH/52zq6jyW4k8vTLO0WCBlYbFPyl5xpD6RWZtRWdmMqTUA20G
         4A5evEBhFjQASLByUMpynNTMh45Dta/I8wbeWlnjqrweeckw9+pPlluvg+g7QXpLtGhs
         uOvEvFC3p7eC3jDHqEFhhVX9n2fUNnjEjXOfKJr21FHrwlcPEMr1ckXCk+Z9k1J6pahr
         oBUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX0TA15T+DF1niPjHwqmA/2TipJ+VrIPsyC2DAA/o84+cr2AJsd
	9ZznSdlyDr1CGSJLdpc2ILM=
X-Google-Smtp-Source: APXvYqz3P5iT1G/vJ9MfaLI9tWNNdEpbHhluoseuwvAXIMmF/ubcwwkiYaGWMSMQ6rpta9lcqyar6g==
X-Received: by 2002:a17:906:2415:: with SMTP id z21mr9740096eja.211.1565201103957;
        Wed, 07 Aug 2019 11:05:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:8bed:: with SMTP id n42ls25023831edn.2.gmail; Wed, 07
 Aug 2019 11:05:03 -0700 (PDT)
X-Received: by 2002:a50:89a6:: with SMTP id g35mr11676729edg.145.1565201103501;
        Wed, 07 Aug 2019 11:05:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565201103; cv=none;
        d=google.com; s=arc-20160816;
        b=xUwhFz9wiJhcV4LmXwLcopNDjoKYTyLe4f7sI2Xilt6bgy4ETuYfjNSUkImj/y5OHI
         uDcSXxksmblOx0TRp65pemevIc0pENdXBeA2MP07Ut1He96qyxvokBwDGZqraDIuEzeO
         sumc6cwDFzFLOd8Oph/KQvi2G3GbvlqL9WeYY3zV9nG+6hvaWgl7s7ebj3OV3S8VcULC
         CuorGgmP7/7tgk6ny2WspXta3LZGjZCptW1hSx6KvgtQID9cuUESlIiYSzsotXHvgH/r
         G0E3ytaxKVaOARwbGEAeS5woOCXAihYFtt+LZ5kJ7Zy9R2qfPZN9dMVnUx5gi2D8rq8j
         OByA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=yZtR69OyP9laXrdw27sr2k4GG4a2+OomER/qdjWd0aM=;
        b=isH2p+zimLWLQf1nMSs4pRi3G9eKINN/lEbMiQR7fsCSwi2PVL/RlVz89KEgzSlTKV
         3plPsOJX0FhJmrl994mWR9lqj1adgiJfoBGNy3Hvf1Id/o1Bqi6JjCAB+Xo/HjsnAA5K
         KR4d2H4sXZBRJWgHDFSdQeD5uEBtl3WjqWf5c6tzF5GvhA67RJay5tWcLgQvrSkFdGBa
         CK+nlj7vZ75dJ3+6ZiZi0ifLeSyv0T4vUgVVRrmiwLfi8X60FTHEUCuBno0qD0aF70ue
         EpA++vLzzsclcHE2S98OJg5JBzurrcDS/SEbqYYMCsjTBIzM27G/pHY/TqGc7B1N6vmx
         zIGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LFSLeJHF;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id w19si1140077ejb.1.2019.08.07.11.05.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Aug 2019 11:05:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id s15so935180wmj.3
        for <clang-built-linux@googlegroups.com>; Wed, 07 Aug 2019 11:05:03 -0700 (PDT)
X-Received: by 2002:a1c:e108:: with SMTP id y8mr1044430wmg.65.1565201102883;
        Wed, 07 Aug 2019 11:05:02 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id z6sm572236wmz.46.2019.08.07.11.05.01
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 07 Aug 2019 11:05:02 -0700 (PDT)
Date: Wed, 7 Aug 2019 11:05:00 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	"kernelci.org bot" <bot@kernelci.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	naresh.kamboju@linaro.org, zhengyang@rock-chips.com, kishon@ti.com,
	heiko@sntech.de, Robin Murphy <robin.murphy@arm.com>
Subject: Re: next/master build: 230 builds: 12 failed, 218 passed, 15 errors,
 1179 warnings (next-20190807)
Message-ID: <20190807180500.GA33631@archlinux-threadripper>
References: <5d4ab6db.1c69fb81.8f6ca.5b76@mx.google.com>
 <CAKwvOdmZ40g0p9B5GF63q9p_fO-LQoSXaYuu9SS+rfNbjE29TA@mail.gmail.com>
 <20190807174331.GA98617@archlinux-threadripper>
 <957d68f7-3a93-8202-13d3-d692a56e62c3@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <957d68f7-3a93-8202-13d3-d692a56e62c3@roeck-us.net>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=LFSLeJHF;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Aug 07, 2019 at 10:52:16AM -0700, Guenter Roeck wrote:
> On 8/7/19 10:43 AM, Nathan Chancellor wrote:
> > On Wed, Aug 07, 2019 at 10:35:26AM -0700, 'Nick Desaulniers' via Clang =
Built Linux wrote:
> > > On Wed, Aug 7, 2019 at 4:32 AM kernelci.org bot <bot@kernelci.org> wr=
ote:
> > > > -------------------------------------------------------------------=
-------------
> > > > allmodconfig (arm64, clang-8) =E2=80=94 FAIL, 1 error, 34 warnings,=
 0 section mismatches
> > > >=20
> > > > Errors:
> > > >      drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:1046:26: error: =
anonymous bit-field has negative width (-1)
> > >=20
> > > This looks new, and only an error w/ Clang builds.
> > >=20
> > > Looks like it's been reported:
> > > https://lkml.org/lkml/2019/8/7/320
> > >=20
> >=20
> > Guenter reports that this is also an issue with GCC 8.3.0, I am going t=
o
> > try to reproduce now:
> >=20
> > https://lore.kernel.org/lkml/20190807142728.GA16360@roeck-us.net/
> >=20
> > https://kerneltests.org/builders/next-arm64-next/builds/1207/steps/buil=
dcommand/logs/stdio
> >=20
> > Cheers,
> > Nathan
> >=20
>=20
> The problem isn't exactly unknown either:
>=20
> https://patchwork.kernel.org/cover/11037801/#22756703
>=20
> Guenter

I suppose this is the fix?

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c b/drivers/phy/ro=
ckchip/phy-rockchip-inno-hdmi.c
index b10a84cab4a7..3346b791ebbf 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
@@ -198,7 +198,7 @@
 #define RK3328_BYPASS_TERM_RESISTOR_CALIB		BIT(7)
 #define RK3328_TERM_RESISTOR_CALIB_SPEED_14_8(x)	UPDATE((x) >> 8, 6, 0)
 /* REG:0xc6 */
-#define RK3328_TERM_RESISTOR_CALIB_SPEED_7_0(x)		UPDATE(x, 7, 9)
+#define RK3328_TERM_RESISTOR_CALIB_SPEED_7_0(x)		UPDATE(x, 9, 7)
 /* REG:0xc7 */
 #define RK3328_TERM_RESISTOR_50				UPDATE(0, 2, 1)
 #define RK3328_TERM_RESISTOR_62_5			UPDATE(1, 2, 1)

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20190807180500.GA33631%40archlinux-threadripper.
