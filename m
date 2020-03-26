Return-Path: <clang-built-linux+bncBC5KPPH4YUKRB6VM6TZQKGQE3TMJJBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8EB194998
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 21:54:19 +0100 (CET)
Received: by mail-wm1-x337.google.com with SMTP id g9sf4555272wmh.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 13:54:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585256059; cv=pass;
        d=google.com; s=arc-20160816;
        b=ddCwV6lIpZLidOI4ExE9LbTB2aUEUIH0jK0l574j3tZ6hTA6O2jVYtCZI2yfn1NHF2
         a8i/rwsPEn5ahwHOVDDdbV5Osz0dGt319vRXDEYJIPMgt8f+hlD2c1uwCjUv7HoK34V8
         3moK4eT04ELKJJKHg27ijCpTDhbm4KLsIPqYfF0v5AQFZIHX1Uyx3P0xallLoqUUD0J5
         j9BmaevsEpa4pwvthI4S89WKtwasCGo/zNciCis3yuG9in414J7a6KE/yfYgQlKMzZna
         GWQMlUZlHUrKzhi3AaK1O8PgOMZtqdM5uxM6UeyLrPl1zDrhdEC6EhHSHC0KXgbnTov4
         wHOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=dHcvtUTh1vrKzf6nryu10CTk7yLxqjPa9dgGPnZMcLs=;
        b=UAGIRIOoJyFrgG7bJ2k4D1vhXeoN6RofFUGmXQDbvO+nsGxO0t7gGMBFd8i0TYBw8m
         LNTvY6gAgHK1qA9D+93yFyowKQJUcb2cKQ/BfgubyNHG1eOroeC4JfrmoZI0pjvZKH4n
         f83jkq862184Loji8I4UeOjqM7s74+3/jXizGGIhStMHwukqziHAhCVlKXYqJrwnMZtg
         CihK5gXMmHEB9o7iFjALWmougMCnr75x8poVo+JRqYFet3KjaIzomRC37bA0jMPqNxvf
         /IYNbNG6l5cOA3nq8xxsBfapFmC3tT3u+p39yRoxNBt2LY0AThmtWY51D1IKsMXv5lKP
         ckFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dHcvtUTh1vrKzf6nryu10CTk7yLxqjPa9dgGPnZMcLs=;
        b=INjnbuU262rN/U5vZlBMwk+s1UFOd6/tcoBAWHbc41yW53HJaiFgM6cMO38ynyrBDj
         2oS5MsHf+nFfvUCffR+c2vsAmpu2qy0gZjKUaD2daqsD5BcgIGROTIq+zNtsPlDynqGz
         oajOR6sDMmAmTLpEi+GBt68p2irrtXzZc0RGHJrgJXXkXgxl6xvy5meuxapuTAwZYQAd
         UzL+qnRrqvJA6nsqXsFaOyDeErkArV0iahNNlzDX+DbCm+IEMgNScHSYU5GGvtEqR7J3
         MxI9cLuJgZ3/m63980cZJkm6KuyxgsR/xww/9Gv4BDo2+fvOY0x1KTJTrpfvbi+dBfxG
         OKDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dHcvtUTh1vrKzf6nryu10CTk7yLxqjPa9dgGPnZMcLs=;
        b=HHUJ1AQHojPyfRDj+t30evoJeqiWnrC60Q5MhcwwL/ufKTqJmuibWUspI+NdbzSgce
         08/zw+odn4+4iVGPty+aqJxTjigKXo25aFwh6XhyGUKLX9tdj0UjXca09kcPTzril/Jm
         vZyp9/whlVtvxIklCVpewBAU1/ly5F8OP9phLZH9EIgOvUJ40JuDBBrxltV6s3uPLHQt
         RCaCKIRZJB7CQkFatlY4j3nARl+6F5DR3vgoOdWXj6wtQm7OWcD8MhgVBrIDLnW6qLSz
         Rid7Lsxa1OnWJ/5fUpZhIsfVE6qfPlqIo2YGwHmiqQQh2FFjKErYAddXecPJlsMlk5j3
         MVog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1T1TgSvy2bwNOvnsrzx/VzQ69ZC3eYR3iQwLrsJAbQSn14OjU7
	gp3++0f6E0hNitwbwnlqseI=
X-Google-Smtp-Source: ADFU+vvPm6LPaf4b8fb2ujvyI2DPjxCZbe3y1HJiT4JA1eqPO5IG5mY5zaJSdEmanLqVc9VGuw6yPA==
X-Received: by 2002:a7b:cd89:: with SMTP id y9mr1923235wmj.142.1585256058855;
        Thu, 26 Mar 2020 13:54:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:6402:: with SMTP id y2ls775913wmb.1.canary-gmail; Thu,
 26 Mar 2020 13:54:18 -0700 (PDT)
X-Received: by 2002:a7b:cd89:: with SMTP id y9mr1923181wmj.142.1585256058060;
        Thu, 26 Mar 2020 13:54:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585256058; cv=none;
        d=google.com; s=arc-20160816;
        b=uyQs1i6nP5iidfkA+J+K082HMVxPew9AOmIPaWNWSZh5f5AV4WTHtZMlRDey1v8wnN
         VQYhS/0vXua0XpWo4oNC6LDPPBdS46L7AXnaJVNid17pgc/qm/vuZtaXPGjPvtfuXVDH
         EJ1TcdQiRxHsHIKeTSuGWjf1oR2Z5Hvl7HAqliWjJ7rnMJLi4BiprcTu/NJpBA6otf4d
         XTCTWgTFKahXTL+CXOVqntvVIICKnoL2LQeFu9hx48T7eWDxk5s9b6SaYHPvN6zFSX0S
         lqHobul+WJhj7/8wU0Bk3MZExddzYkuQNN+XLKsE8tCanLt5F+zRrDo/7fYQkxp8bGe/
         GeEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=/evyHahOg1n5i6D6+OvixLPL/QKhl+Ke8mq1/1KG1B0=;
        b=dJ/I+/v0JBn11dhVe0B42jkaJ9W5orqCQdkKxRtQwmHBfWhdNeFyA13nFZlg0EmN1L
         7y0XycmWnwkpm6zSK6nCzGIBhi3pcf+PXlxHFOhvYp/w2ATnsmKFMDy8vOoqN8p0fwUp
         lA85idiTbCAO1zSsF4FER87HRQz3eLt5RR2cG9hDhgCXhiqvDS0GNzWzeipfWAfT+lcX
         s3R01abDN3L/Pri9tWukWzRXIzqFBcQurY89C2xe/o8VaQkXXgdjf1rNegSxRYLZ35vh
         BwHuJAjeRxegX0qjCBIGwOPxL4kv0NfdqAfiY3+XsFiy4OAB7KZ0+d3xHWnW9jdrtjVS
         4loQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id l8si190451wrr.1.2020.03.26.13.54.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 26 Mar 2020 13:54:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of guillaume.tucker@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: gtucker)
	with ESMTPSA id 85129297A7B
Subject: Re: next/master build: 227 builds: 17 failed, 210 passed, 41 errors,
 497 warnings (next-20200326)
To: Nick Desaulniers <ndesaulniers@google.com>, kernelci@groups.io
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
 Kevin Hilman <khilman@baylibre.com>
References: <5e7cb175.1c69fb81.d10e.6d4a@mx.google.com>
 <CAKwvOdkTh+uHOK0bd5UGGfYiFQU+MkeT71Yy7Ggof9FkQHCG-g@mail.gmail.com>
From: Guillaume Tucker <guillaume.tucker@collabora.com>
Message-ID: <64828a9f-9983-d731-d52e-3d753fc035f6@collabora.com>
Date: Thu, 26 Mar 2020 20:54:14 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdkTh+uHOK0bd5UGGfYiFQU+MkeT71Yy7Ggof9FkQHCG-g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: guillaume.tucker@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of guillaume.tucker@collabora.com designates
 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

On 26/03/2020 18:49, Nick Desaulniers wrote:
> Oh no, did the format of the logs change with the latest deployment?
> I expected to see the breakdown of which builds had which
> warnings/errors, which is very fast for me to triage.  If it was an
> intentional change, can we please bring those back?

Erm, yes I think it was this change:

  https://github.com/kernelci/kernelci-backend/pull/222

I probably need to have several different templates, and the
ability to choose which one to use for each report.  We'll need
this kind of flexibility too for other test email reports.

However you can still see the list of clang builds here:

  https://kernelci.org/build/next/branch/master/kernel/next-20200326/

if you type "clang" in the search bar.  Is that better?

Guillaume


> On Thu, Mar 26, 2020 at 6:43 AM kernelci.org bot <bot@kernelci.org> wrote=
:
>>
>> next/master build: 227 builds: 17 failed, 210 passed, 41 errors, 497 war=
nings (next-20200326)
>>
>> Full Build Summary: https://kernelci.org/build/next/branch/master/kernel=
/next-20200326/
>>
>> Tree: next
>> Branch: master
>> Git Describe: next-20200326
>> Git Commit: 89295c59c1f063b533d071ca49d0fa0c0783ca6f
>> Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next=
.git
>> Built: 7 unique architectures
>>
>> Build Failures Detected:
>>
>> arm64:
>>     allmodconfig: (clang-9) FAIL
>>     allmodconfig: (gcc-8) FAIL
>>
>> arm:
>>     allmodconfig: (clang-9) FAIL
>>     allmodconfig: (gcc-8) FAIL
>>     cm_x300_defconfig: (gcc-8) FAIL
>>     em_x270_defconfig: (gcc-8) FAIL
>>     eseries_pxa_defconfig: (gcc-8) FAIL
>>     mmp2_defconfig: (gcc-8) FAIL
>>     pxa168_defconfig: (gcc-8) FAIL
>>     pxa910_defconfig: (gcc-8) FAIL
>>     pxa_defconfig: (gcc-8) FAIL
>>     qcom_defconfig: (gcc-8) FAIL
>>     vf610m4_defconfig: (gcc-8) FAIL
>>
>> mips:
>>     mtx1_defconfig: (gcc-8) FAIL
>>
>> riscv:
>>     allnoconfig: (gcc-8) FAIL
>>     tinyconfig: (gcc-8) FAIL
>>
>> x86_64:
>>     defconfig: (clang-9) FAIL
>>
>> Errors and Warnings Detected:
>>
>> arc:
>>
>> arm64:
>>     allmodconfig (gcc-8): 2 errors
>>     allmodconfig (clang-9): 2 errors
>>     defconfig (gcc-8): 29 warnings
>>     defconfig (clang-9): 29 warnings
>>     defconfig (gcc-8): 29 warnings
>>     defconfig (gcc-8): 29 warnings
>>     defconfig (gcc-8): 29 warnings
>>
>> arm:
>>     allmodconfig (gcc-8): 2 errors, 18 warnings
>>     allmodconfig (clang-9): 2 errors, 21 warnings
>>     aspeed_g4_defconfig (gcc-8): 4 warnings
>>     aspeed_g5_defconfig (clang-9): 4 warnings
>>     aspeed_g5_defconfig (gcc-8): 4 warnings
>>     bcm2835_defconfig (gcc-8): 14 warnings
>>     cm_x300_defconfig (gcc-8): 1 error, 2 warnings
>>     em_x270_defconfig (gcc-8): 1 error, 2 warnings
>>     eseries_pxa_defconfig (gcc-8): 14 errors, 12 warnings
>>     integrator_defconfig (gcc-8): 1 warning
>>     mmp2_defconfig (gcc-8): 1 error
>>     multi_v4t_defconfig (gcc-8): 1 warning
>>     multi_v5_defconfig (gcc-8): 4 warnings
>>     multi_v5_defconfig (clang-9): 4 warnings
>>     multi_v7_defconfig (gcc-8): 18 warnings
>>     multi_v7_defconfig (clang-9): 20 warnings
>>     multi_v7_defconfig (gcc-8): 18 warnings
>>     multi_v7_defconfig (gcc-8): 18 warnings
>>     multi_v7_defconfig (gcc-8): 18 warnings
>>     multi_v7_defconfig (gcc-8): 19 warnings
>>     pxa168_defconfig (gcc-8): 1 error
>>     pxa910_defconfig (gcc-8): 1 error
>>     pxa_defconfig (gcc-8): 3 errors, 6 warnings
>>     qcom_defconfig (gcc-8): 1 error
>>     vf610m4_defconfig (gcc-8): 4 errors, 5 warnings
>>
>> i386:
>>
>> mips:
>>     32r2el_defconfig (gcc-8): 3 warnings
>>     32r2el_defconfig (gcc-8): 3 warnings
>>     allnoconfig (gcc-8): 1 warning
>>     ar7_defconfig (gcc-8): 2 warnings
>>     ath25_defconfig (gcc-8): 2 warnings
>>     ath79_defconfig (gcc-8): 2 warnings
>>     bcm47xx_defconfig (gcc-8): 2 warnings
>>     bcm63xx_defconfig (gcc-8): 1 warning
>>     bigsur_defconfig (gcc-8): 2 warnings
>>     bmips_be_defconfig (gcc-8): 1 warning
>>     bmips_stb_defconfig (gcc-8): 1 warning
>>     capcella_defconfig (gcc-8): 2 warnings
>>     cavium_octeon_defconfig (gcc-8): 2 warnings
>>     ci20_defconfig (gcc-8): 3 warnings
>>     cobalt_defconfig (gcc-8): 2 warnings
>>     cu1000-neo_defconfig (gcc-8): 1 warning
>>     db1xxx_defconfig (gcc-8): 1 warning
>>     decstation_64_defconfig (gcc-8): 2 warnings
>>     decstation_defconfig (gcc-8): 2 warnings
>>     decstation_r4k_defconfig (gcc-8): 2 warnings
>>     e55_defconfig (gcc-8): 2 warnings
>>     fuloong2e_defconfig (gcc-8): 2 warnings
>>     gcw0_defconfig (gcc-8): 1 warning
>>     gpr_defconfig (gcc-8): 2 warnings
>>     ip22_defconfig (gcc-8): 2 warnings
>>     ip27_defconfig (gcc-8): 2 warnings
>>     ip28_defconfig (gcc-8): 2 warnings
>>     ip32_defconfig (gcc-8): 2 warnings
>>     jazz_defconfig (gcc-8): 2 warnings
>>     jmr3927_defconfig (gcc-8): 1 warning
>>     lasat_defconfig (gcc-8): 1 warning
>>     lemote2f_defconfig (gcc-8): 2 warnings
>>     loongson1b_defconfig (gcc-8): 2 warnings
>>     loongson1c_defconfig (gcc-8): 2 warnings
>>     loongson3_defconfig (gcc-8): 2 warnings
>>     malta_defconfig (gcc-8): 2 warnings
>>     malta_kvm_defconfig (gcc-8): 2 warnings
>>     malta_kvm_guest_defconfig (gcc-8): 2 warnings
>>     malta_qemu_32r6_defconfig (gcc-8): 3 warnings
>>     maltaaprp_defconfig (gcc-8): 2 warnings
>>     maltasmvp_defconfig (gcc-8): 2 warnings
>>     maltasmvp_eva_defconfig (gcc-8): 2 warnings
>>     maltaup_defconfig (gcc-8): 2 warnings
>>     maltaup_xpa_defconfig (gcc-8): 2 warnings
>>     markeins_defconfig (gcc-8): 2 warnings
>>     mips_paravirt_defconfig (gcc-8): 2 warnings
>>     mpc30x_defconfig (gcc-8): 2 warnings
>>     msp71xx_defconfig (gcc-8): 2 warnings
>>     mtx1_defconfig (gcc-8): 2 errors, 1 warning
>>     nlm_xlp_defconfig (gcc-8): 2 warnings
>>     nlm_xlr_defconfig (gcc-8): 2 warnings
>>     omega2p_defconfig (gcc-8): 1 warning
>>     pic32mzda_defconfig (gcc-8): 2 warnings
>>     pistachio_defconfig (gcc-8): 2 warnings
>>     pnx8335_stb225_defconfig (gcc-8): 2 warnings
>>     qi_lb60_defconfig (gcc-8): 2 warnings
>>     rb532_defconfig (gcc-8): 2 warnings
>>     rbtx49xx_defconfig (gcc-8): 2 warnings
>>     rm200_defconfig (gcc-8): 3 warnings
>>     rt305x_defconfig (gcc-8): 2 warnings
>>     sb1250_swarm_defconfig (gcc-8): 2 warnings
>>     tb0219_defconfig (gcc-8): 2 warnings
>>     tb0226_defconfig (gcc-8): 2 warnings
>>     tb0287_defconfig (gcc-8): 2 warnings
>>     tinyconfig (gcc-8): 1 warning
>>     vocore2_defconfig (gcc-8): 1 warning
>>     workpad_defconfig (gcc-8): 2 warnings
>>     xway_defconfig (gcc-8): 2 warnings
>>
>> riscv:
>>     allnoconfig (gcc-8): 1 error
>>     rv32_defconfig (gcc-8): 6 warnings
>>     tinyconfig (gcc-8): 1 error
>>
>> x86_64:
>>     allmodconfig (clang-9): 4 warnings
>>     defconfig (clang-9): 2 errors
>>     tinyconfig (gcc-8): 1 warning
>>
>> Errors summary:
>>
>>     4    ERROR: modpost: "mtk_mmsys_ddp_disconnect" [drivers/gpu/drm/med=
iatek/mediatek-drm.ko] undefined!
>>     4    ERROR: modpost: "mtk_mmsys_ddp_connect" [drivers/gpu/drm/mediat=
ek/mediatek-drm.ko] undefined!
>>     3    ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm97=
12.ko] undefined!
>>     2    arch/riscv/kernel/stacktrace.c:78:8: error: =E2=80=98sp_in_glob=
al=E2=80=99 undeclared (first use in this function); did you mean =E2=80=98=
spin_lock=E2=80=99?
>>     2    /home/buildslave/workspace/kernel-build@2/linux/build/../driver=
s/clk/mmp/clk.c:192: undefined reference to `mmp_clk_register_pll'
>>     1    sound/soc/codecs/wm9712.c:94:3: error: =E2=80=98const struct re=
gmap_config=E2=80=99 has no member named =E2=80=98num_reg_defaults=E2=80=99
>>     1    sound/soc/codecs/wm9712.c:93:3: error: =E2=80=98const struct re=
gmap_config=E2=80=99 has no member named =E2=80=98reg_defaults=E2=80=99
>>     1    sound/soc/codecs/wm9712.c:91:3: error: =E2=80=98const struct re=
gmap_config=E2=80=99 has no member named =E2=80=98volatile_reg=E2=80=99
>>     1    sound/soc/codecs/wm9712.c:89:3: error: =E2=80=98const struct re=
gmap_config=E2=80=99 has no member named =E2=80=98cache_type=E2=80=99
>>     1    sound/soc/codecs/wm9712.c:88:3: error: =E2=80=98const struct re=
gmap_config=E2=80=99 has no member named =E2=80=98max_register=E2=80=99
>>     1    sound/soc/codecs/wm9712.c:87:3: error: =E2=80=98const struct re=
gmap_config=E2=80=99 has no member named =E2=80=98val_bits=E2=80=99
>>     1    sound/soc/codecs/wm9712.c:86:3: error: =E2=80=98const struct re=
gmap_config=E2=80=99 has no member named =E2=80=98reg_stride=E2=80=99
>>     1    sound/soc/codecs/wm9712.c:85:3: error: =E2=80=98const struct re=
gmap_config=E2=80=99 has no member named =E2=80=98reg_bits=E2=80=99
>>     1    sound/soc/codecs/wm9712.c:84:35: error: storage size of =E2=80=
=98wm9712_regmap_config=E2=80=99 isn=E2=80=99t known
>>     1    sound/soc/codecs/wm9712.c:84:21: error: variable =E2=80=98wm971=
2_regmap_config=E2=80=99 has initializer but incomplete type
>>     1    sound/soc/codecs/wm9712.c:80:10: error: implicit declaration of=
 function =E2=80=98regmap_ac97_default_volatile=E2=80=99 [-Werror=3Dimplici=
t-function-declaration]
>>     1    sound/soc/codecs/wm9712.c:675:3: error: implicit declaration of=
 function =E2=80=98snd_soc_component_exit_regmap=E2=80=99; did you mean =E2=
=80=98snd_soc_component_trigger=E2=80=99? [-Werror=3Dimplicit-function-decl=
aration]
>>     1    sound/soc/codecs/wm9712.c:662:2: error: implicit declaration of=
 function =E2=80=98snd_soc_component_init_regmap=E2=80=99; did you mean =E2=
=80=98snd_soc_component_trigger=E2=80=99? [-Werror=3Dimplicit-function-decl=
aration]
>>     1    sound/soc/codecs/wm9712.c:653:12: error: implicit declaration o=
f function =E2=80=98regmap_init_ac97=E2=80=99; did you mean =E2=80=98memmap=
_init_zone=E2=80=99? [-Werror=3Dimplicit-function-declaration]
>>     1    drivers/clocksource/timer-vf-pit.c:194: error: unterminated arg=
ument list invoking macro "BUG_ON"
>>     1    drivers/clocksource/timer-vf-pit.c:131:8: error: expected =E2=
=80=98;=E2=80=99 at end of input
>>     1    drivers/clocksource/timer-vf-pit.c:131:2: error: =E2=80=98BUG_O=
N=E2=80=99 undeclared (first use in this function)
>>     1    drivers/clocksource/timer-vf-pit.c:131:2: error: expected decla=
ration or statement at end of input
>>     1    clang: error: assembler command failed with exit code 1 (use -v=
 to see invocation)
>>     1    ERROR: modpost: "sysrq_toggle_support" [drivers/tty/serial/seri=
al_core.ko] undefined!
>>     1    ERROR: modpost: "sysrq_mask" [drivers/tty/serial/serial_core.ko=
] undefined!
>>     1    ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm97=
13.ko] undefined!
>>     1    ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm97=
05.ko] undefined!
>>     1    ERROR: modpost: "rd_full" [drivers/gpu/drm/msm/msm.ko] undefine=
d!
>>     1    /tmp/cpudeadline-9c7247.s:76: Error: `%ecx' not allowed with `o=
rb'
>>     1    /home/buildslave/workspace/workspace/kernel-build@3/linux/build=
/../drivers/clk/mmp/clk.c:192: undefined reference to `mmp_clk_register_pll=
'
>>
>> Warnings summary:
>>
>>     125  <stdin>:1520:2: warning: #warning syscall process_madvise not i=
mplemented [-Wcpp]
>>     98   arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges=
_format): /soc/firmware:dma-ranges: empty "dma-ranges" property but its #ad=
dress-cells (2) differs from /soc (1)
>>     80   arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warnin=
g (dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges=
" property has invalid length (12 bytes) (parent #address-cells =3D=3D 1, c=
hild #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>>     25   scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warn=
ing (dma_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" prope=
rty but its #address-cells (2) differs from /soc (1)
>>     15   arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14:=
 Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property =
but its #size-cells (1) differs from / (2)
>>     15   arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14:=
 Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property =
but its #address-cells (1) differs from / (2)
>>     11   arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30: W=
arning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg: I2C a=
ddress must be less than 10-bits, got "0x40000010"
>>     11   arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.=
4: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C b=
us unit address format error, expected "40000010"
>>     11   arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30: W=
arning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg: I2C a=
ddress must be less than 10-bits, got "0x40000010"
>>     11   arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.=
4: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C b=
us unit address format error, expected "40000010"
>>     9    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer =
from integer of different size [-Wint-to-pointer-cast]
>>     8    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
>>     8    1 warning generated.
>>     5    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_ra=
nges_format): /soc:dma-ranges: empty "dma-ranges" property but its #size-ce=
lls (1) differs from / (2)
>>     5    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_ra=
nges_format): /soc:dma-ranges: empty "dma-ranges" property but its #address=
-cells (1) differs from / (2)
>>     4    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer =
from integer of different size [-Wint-to-pointer-cast]
>>     2    arch/arm/lib/xor-neon.c:30:2: warning: This code requires at le=
ast version 4.6 of GCC [-W#warnings]
>>     2    arch/arm/boot/dts/integratorap.dts:12.2-43: Warning (dma_ranges=
_format): /:dma-ranges: Root node has a "dma-ranges" property
>>     2    WARNING: unmet direct dependencies detected for SND_SOC_WM9713
>>     2    WARNING: unmet direct dependencies detected for SND_SOC_WM9705
>>     2    <stdin>:830:2: warning: #warning syscall fstat64 not implemente=
d [-Wcpp]
>>     2    <stdin>:1511:2: warning: #warning syscall clone3 not implemente=
d [-Wcpp]
>>     2    <stdin>:1127:2: warning: #warning syscall fstatat64 not impleme=
nted [-Wcpp]
>>     2    #warning This code requires at least version 4.6 of GCC
>>     1    {standard input}:141: Warning: macro instruction expanded into =
multiple instructions
>>     1    sound/soc/codecs/wm9712.c:93:18: warning: excess elements in st=
ruct initializer
>>     1    sound/soc/codecs/wm9712.c:91:18: warning: excess elements in st=
ruct initializer
>>     1    sound/soc/codecs/wm9712.c:89:16: warning: excess elements in st=
ruct initializer
>>     1    sound/soc/codecs/wm9712.c:88:18: warning: excess elements in st=
ruct initializer
>>     1    sound/soc/codecs/wm9712.c:87:14: warning: excess elements in st=
ruct initializer
>>     1    sound/soc/codecs/wm9712.c:86:16: warning: excess elements in st=
ruct initializer
>>     1    sound/soc/codecs/wm9712.c:85:14: warning: excess elements in st=
ruct initializer
>>     1    sound/soc/codecs/wm9712.c:653:10: warning: assignment to =E2=80=
=98struct regmap *=E2=80=99 from =E2=80=98int=E2=80=99 makes pointer from i=
nteger without a cast [-Wint-conversion]
>>     1    sound/soc/codecs/cros_ec_codec.c:776:12: warning: stack frame s=
ize of 1152 bytes in function 'wov_hotword_model_put' [-Wframe-larger-than=
=3D]
>>     1    security/integrity/ima/ima_crypto.c:512:5: warning: stack frame=
 size of 1152 bytes in function 'ima_calc_field_array_hash' [-Wframe-larger=
-than=3D]
>>     1    net/sched/cls_flower.c:331:1: warning: the frame size of 1032 b=
ytes is larger than 1024 bytes [-Wframe-larger-than=3D]
>>     1    mm/kasan/common.o: warning: objtool: kasan_report()+0x87: call =
to __stack_chk_fail() with UACCESS enabled
>>     1    include/linux/kernel.h:47:25: warning: excess elements in struc=
t initializer
>>     1    include/linux/kern_levels.h:5:18: warning: format =E2=80=98%lu=
=E2=80=99 expects argument of type =E2=80=98long unsigned int=E2=80=99, but=
 argument 2 has type =E2=80=98unsigned int=E2=80=99 [-Wformat=3D]
>>     1    drivers/soc/fsl/dpio/qbman-portal.c:870:14: warning: cast from =
pointer to integer of different size [-Wpointer-to-int-cast]
>>     1    drivers/soc/fsl/dpio/dpio-service.c:476:5: warning: stack frame=
 size of 1072 bytes in function 'dpaa2_io_service_enqueue_multiple_desc_fq'=
 [-Wframe-larger-than=3D]
>>     1    drivers/scsi/bfa/bfa_fcs_lport.c:1900:1: warning: stack frame s=
ize of 1824 bytes in function 'bfa_fcs_lport_fdmi_build_rhba_pyld' [-Wframe=
-larger-than=3D]
>>     1    drivers/net/phy/mdio-octeon.c:48:3: warning: cast from pointer =
to integer of different size [-Wpointer-to-int-cast]
>>     1    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:77:1=
3: warning: stack frame size of 5648 bytes in function 'calculate_bandwidth=
' [-Wframe-larger-than=3D]
>>     1    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:3014=
:6: warning: stack frame size of 1376 bytes in function 'bw_calcs' [-Wframe=
-larger-than=3D]
>>     1    drivers/firmware/efi/libstub/file.c:123:21: warning: stack fram=
e size of 1232 bytes in function 'handle_cmdline_files' [-Wframe-larger-tha=
n=3D]
>>     1    drivers/crypto/inside-secure/safexcel_cipher.c:404:12: warning:=
 stack frame size of 1136 bytes in function 'safexcel_aead_setkey' [-Wframe=
-larger-than=3D]
>>     1    drivers/clocksource/timer-vf-pit.c:97:20: warning: =E2=80=98pit=
_timer_interrupt=E2=80=99 defined but not used [-Wunused-function]
>>     1    drivers/clocksource/timer-vf-pit.c:56:19: warning: =E2=80=98pit=
_clocksource_init=E2=80=99 defined but not used [-Wunused-function]
>>     1    drivers/clocksource/timer-vf-pit.c:131:2: warning: no return st=
atement in function returning non-void [-Wreturn-type]
>>     1    drivers/clocksource/timer-vf-pit.c:126:19: warning: =E2=80=98pi=
t_clockevent_init=E2=80=99 defined but not used [-Wunused-function]
>>     1    drivers/clocksource/timer-vf-pit.c:117:34: warning: =E2=80=98cl=
ockevent_pit=E2=80=99 defined but not used [-Wunused-variable]
>>     1    drivers/block/paride/bpck.c:32: warning: "PC" redefined
>>     1    cc1: some warnings being treated as errors
>>     1    arch/x86/kernel/signal.o: warning: objtool: x32_setup_rt_frame(=
)+0x1fa: call to memset() with UACCESS enabled
>>     1    arch/x86/kernel/signal.o: warning: objtool: __setup_rt_frame()+=
0x1f8: call to memset() with UACCESS enabled
>>     1    arch/x86/ia32/ia32_signal.o: warning: objtool: ia32_setup_rt_fr=
ame()+0x1ef: call to memset() with UACCESS enabled
>>     1    arch/mips/configs/ci20_defconfig:178:warning: override: reassig=
ning to symbol LEDS_TRIGGER_ONESHOT
>>     1    2 warnings generated.
>>     1    /tmp/test-arm-e023be.s:18788: Warning: using r15 results in unp=
redictable behaviour
>>     1    /tmp/test-arm-e023be.s:18713: Warning: using r15 results in unp=
redictable behaviour
>>     1    /tmp/ccbU4HdL.s:18191: Warning: using r15 results in unpredicta=
ble behaviour
>>     1    /tmp/ccbU4HdL.s:18119: Warning: using r15 results in unpredicta=
ble behaviour
>>     1    .config:1161:warning: override: UNWINDER_GUESS changes choice s=
tate
>>
>> Section mismatches summary:
>>
>>     1    WARNING: modpost: vmlinux.o(.text.unlikely+0x39dc): Section mis=
match in reference from the function pmax_setup_memory_region() to the func=
tion .init.text:add_memory_region()
>>     1    WARNING: modpost: vmlinux.o(.text.unlikely+0x3684): Section mis=
match in reference from the function pmax_setup_memory_region() to the func=
tion .init.text:add_memory_region()
>>
>> ---
>> For more info write to <info@kernelci.org>
>>
>> --
>> You received this message because you are subscribed to the Google Group=
s "Clang Built Linux" group.
>> To unsubscribe from this group and stop receiving emails from it, send a=
n email to clang-built-linux+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msg=
id/clang-built-linux/5e7cb175.1c69fb81.d10e.6d4a%40mx.google.com.
>=20
>=20
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/64828a9f-9983-d731-d52e-3d753fc035f6%40collabora.com.
