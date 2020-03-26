Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQPS6PZQKGQEHXLUXZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E3931946C6
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 19:49:40 +0100 (CET)
Received: by mail-oi1-x23b.google.com with SMTP id t12sf5623835oih.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 11:49:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585248579; cv=pass;
        d=google.com; s=arc-20160816;
        b=mlwMpZ5nYB9p1HXBajFpCcRYCDQ6UI7sfKeIjCSRKNtvENWArUw7lb7nMW+xLCooYP
         XmA4mgQQqtfo64ovUDwbQMt5/wlRz57jxVypOXVaif5ycVxxc1aah47EFlKrgU3zvRih
         zPxLsfVvH3MWr62PUkruUWWRlvMej6SvT1+dr0l8M4T3y1kaFkG1OjY+fdXUyTbGLkBk
         /Tvtun1CPdzTpZa+IccheccknqTqFLStKcCHEHNTbCVzO3ZU4hXfLCo83wtAhEiKYnT9
         sxAqFBBMNXXmcF69m3J+61jdnqKXKkypNJaInc0ZVKRKXEqYYp5+YIxNHn4tGmN80pcu
         bztQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DnWDUM/DIqA1fim5LTUrjdoy01CMh8iRntzKRV9oei0=;
        b=xzq6fdR0upaLtnwaWcMmumKLMU5py0OwvOSj3QG8aKKr4tXo9FqkFjUWz4GQR+wwOB
         GceC9kU7tr77VmHMrp3eM2kvLomrXgj+Smk5GiMm1YMwYOw1+p23g/U/ZgydgIgK0WWR
         b+SxMHbsKn8GAhOOPd0Ob6uN7nSjYppCjkkqWawGAowI9qZi/E2lGiLuNC3wkTU2l9B4
         8PdUgVlHtuLlhgAVtdhjoVLl9FnAzSmLsjdn7KPK0folBwATTC0fvKb7gEcvDflGA5cL
         q74uhhKtlaQgRPAd8QdVU7V5oyb3LcZeNvQEOkFuB6q2ps1EF1ofLX5DtR0kg+lubEOg
         7vCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bjBIFy1O;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=DnWDUM/DIqA1fim5LTUrjdoy01CMh8iRntzKRV9oei0=;
        b=g1OlAkPfR/J0wbfOTdpXbQG43if0RErkh95nfxNbn2bz3fB1aX3OJG5Ow89KpMjHMR
         VFTe6FCAPP3GJ7qVMVK2Q05vLBb6rQeFa1vVI6DY3Yi9ob8HlSDa5Ynvbwv2x8ZUdAeX
         DALmZrtoHxBqdDtGYNolg4jfK8MrLgSmUhG+lLZor/HlMw3/OkTiNIFvptSz2tM64MpF
         3RHpAffECboNdttByb42KeBoV4MZavbmw4SGJijGj8yReUvqfNeNN5JNLpn1odhwzKu1
         adAni6k8UhIvc4T55L2520vCHLkjkYOZsOfMgCo7gsweMPzWWQh/En90frekozuwRlXe
         SsDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DnWDUM/DIqA1fim5LTUrjdoy01CMh8iRntzKRV9oei0=;
        b=OrbmjDG3zFl9zbBhGt7tlqdWIkJeLH9DC8K40Zop45zUJP02sS0t8o2QB6084DUeoi
         yoQTyWAppgT91ksX9B95IVGh1MCugUZED3DtMDGCLWdbQYPDvS7xtn4szpAha0y3SOWi
         1wf8Sl5ZqNNPWfNJqeXKKJTmIk11CkzeK8T98rmrL010Q7JPY4cGLkzFeuHb7xx0K2ly
         K50kCM0MvM2bwuSWdcKtvWpYoG/XCQflMty3X0k3gh9WU2aso/b0lChBQOV6kHeuaZly
         UMQHoWrf36z5V6A/gzvIYVmMfzag4iaR2wZGaHAVgklg0BjArsY95PDJuRCbjoCKZAN5
         bU4g==
X-Gm-Message-State: ANhLgQ3FSwdGQi0iVN8u9kgFB1PktsDy2pyj7Z8ofdHCOtKini6E5d+D
	NYRRpNlhParixB/9Z5Rr+wo=
X-Google-Smtp-Source: ADFU+vvhOZpYKOyByh7RDg9MZ+fuAbRPMpG0j5eusulLpyw1B12Q+uSfLyxlLDcXOKROgt5Nem8qfA==
X-Received: by 2002:a9d:67c6:: with SMTP id c6mr7493889otn.11.1585248577510;
        Thu, 26 Mar 2020 11:49:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:787:: with SMTP id 7ls2453200oto.3.gmail; Thu, 26 Mar
 2020 11:49:35 -0700 (PDT)
X-Received: by 2002:a9d:6341:: with SMTP id y1mr3986703otk.40.1585248575609;
        Thu, 26 Mar 2020 11:49:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585248575; cv=none;
        d=google.com; s=arc-20160816;
        b=jtPIj4E+Mj0/5/8wC4r+fGkLLjWQ1T+vS72YlEJfDYHTGtcECZukBp7ymLDO28E1E6
         QlVqh67WXF9NMTvsfrQs8icks2Jmd+uQ82MO5S+PVNiTEUzhlBaV+H9d1rf0DGjwNIta
         KkJ1bFeAdQ1ZaDwHaAxd4kkfC68Fn5u7xIA8em/B+oC5H+4pylOZ8tR0qN19uMQKWgSy
         HsUsB3bdZL0Ci5L8gRiI/tY8vdVxu3iG0ko7CraVGRQBkwKG7z3fvpWPE4P5BDGShMnN
         0ho9ZxuA22RhRbZ2GqxNckqYP8Fr6/VlIUmki3YlxjTq8++KkCbIfyn2b0InAU0i6BgL
         1vgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=SfLnVLk6eBCh+Gd259ExVS9JMecjFx6ju8RzuzcjRd4=;
        b=CY536r3sRE9DuJsa31qlZ7hdqyxnxTvFiRE/FvtduqDTlVRkfNVjsNleJqs7DdoOcl
         5FsCNjxu3EvYISwL1Z4lLGrcaK1YsIPzMsELCbFuGycmCvM+CjO3RDWQJuKBitycHI9b
         8I3GrUHD4m7u7MJxS3Tjj//MLKQb7ryyOW+gMapNSr1P1lvoiCFtfzYne1Ukr/NxZCwq
         X7j9n3TW0y+rHJmDhrzrVGg7k5tMNj7LbOdgmYz5EjKBCD+L2i9BWj8LBY3ik3JD5JPO
         BZNMQLp+C9UYtqrpxinQ6P5OuQ6x5RlBcIW3ON00S2Zo22JysUInDuTIKtgcwVBXvRWI
         P1jQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bjBIFy1O;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com. [2607:f8b0:4864:20::1035])
        by gmr-mx.google.com with ESMTPS id n5si318382otf.3.2020.03.26.11.49.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 11:49:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1035 as permitted sender) client-ip=2607:f8b0:4864:20::1035;
Received: by mail-pj1-x1035.google.com with SMTP id kx8so2787315pjb.5
        for <clang-built-linux@googlegroups.com>; Thu, 26 Mar 2020 11:49:35 -0700 (PDT)
X-Received: by 2002:a17:902:6bc8:: with SMTP id m8mr9272976plt.223.1585248574230;
 Thu, 26 Mar 2020 11:49:34 -0700 (PDT)
MIME-Version: 1.0
References: <5e7cb175.1c69fb81.d10e.6d4a@mx.google.com>
In-Reply-To: <5e7cb175.1c69fb81.d10e.6d4a@mx.google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 26 Mar 2020 11:49:21 -0700
Message-ID: <CAKwvOdkTh+uHOK0bd5UGGfYiFQU+MkeT71Yy7Ggof9FkQHCG-g@mail.gmail.com>
Subject: Re: next/master build: 227 builds: 17 failed, 210 passed, 41 errors,
 497 warnings (next-20200326)
To: kernelci@groups.io, Guillaume Tucker <guillaume.tucker@collabora.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	"kernelci.org bot" <bot@kernelci.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bjBIFy1O;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1035
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Oh no, did the format of the logs change with the latest deployment?
I expected to see the breakdown of which builds had which
warnings/errors, which is very fast for me to triage.  If it was an
intentional change, can we please bring those back?

On Thu, Mar 26, 2020 at 6:43 AM kernelci.org bot <bot@kernelci.org> wrote:
>
> next/master build: 227 builds: 17 failed, 210 passed, 41 errors, 497 warn=
ings (next-20200326)
>
> Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/=
next-20200326/
>
> Tree: next
> Branch: master
> Git Describe: next-20200326
> Git Commit: 89295c59c1f063b533d071ca49d0fa0c0783ca6f
> Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.=
git
> Built: 7 unique architectures
>
> Build Failures Detected:
>
> arm64:
>     allmodconfig: (clang-9) FAIL
>     allmodconfig: (gcc-8) FAIL
>
> arm:
>     allmodconfig: (clang-9) FAIL
>     allmodconfig: (gcc-8) FAIL
>     cm_x300_defconfig: (gcc-8) FAIL
>     em_x270_defconfig: (gcc-8) FAIL
>     eseries_pxa_defconfig: (gcc-8) FAIL
>     mmp2_defconfig: (gcc-8) FAIL
>     pxa168_defconfig: (gcc-8) FAIL
>     pxa910_defconfig: (gcc-8) FAIL
>     pxa_defconfig: (gcc-8) FAIL
>     qcom_defconfig: (gcc-8) FAIL
>     vf610m4_defconfig: (gcc-8) FAIL
>
> mips:
>     mtx1_defconfig: (gcc-8) FAIL
>
> riscv:
>     allnoconfig: (gcc-8) FAIL
>     tinyconfig: (gcc-8) FAIL
>
> x86_64:
>     defconfig: (clang-9) FAIL
>
> Errors and Warnings Detected:
>
> arc:
>
> arm64:
>     allmodconfig (gcc-8): 2 errors
>     allmodconfig (clang-9): 2 errors
>     defconfig (gcc-8): 29 warnings
>     defconfig (clang-9): 29 warnings
>     defconfig (gcc-8): 29 warnings
>     defconfig (gcc-8): 29 warnings
>     defconfig (gcc-8): 29 warnings
>
> arm:
>     allmodconfig (gcc-8): 2 errors, 18 warnings
>     allmodconfig (clang-9): 2 errors, 21 warnings
>     aspeed_g4_defconfig (gcc-8): 4 warnings
>     aspeed_g5_defconfig (clang-9): 4 warnings
>     aspeed_g5_defconfig (gcc-8): 4 warnings
>     bcm2835_defconfig (gcc-8): 14 warnings
>     cm_x300_defconfig (gcc-8): 1 error, 2 warnings
>     em_x270_defconfig (gcc-8): 1 error, 2 warnings
>     eseries_pxa_defconfig (gcc-8): 14 errors, 12 warnings
>     integrator_defconfig (gcc-8): 1 warning
>     mmp2_defconfig (gcc-8): 1 error
>     multi_v4t_defconfig (gcc-8): 1 warning
>     multi_v5_defconfig (gcc-8): 4 warnings
>     multi_v5_defconfig (clang-9): 4 warnings
>     multi_v7_defconfig (gcc-8): 18 warnings
>     multi_v7_defconfig (clang-9): 20 warnings
>     multi_v7_defconfig (gcc-8): 18 warnings
>     multi_v7_defconfig (gcc-8): 18 warnings
>     multi_v7_defconfig (gcc-8): 18 warnings
>     multi_v7_defconfig (gcc-8): 19 warnings
>     pxa168_defconfig (gcc-8): 1 error
>     pxa910_defconfig (gcc-8): 1 error
>     pxa_defconfig (gcc-8): 3 errors, 6 warnings
>     qcom_defconfig (gcc-8): 1 error
>     vf610m4_defconfig (gcc-8): 4 errors, 5 warnings
>
> i386:
>
> mips:
>     32r2el_defconfig (gcc-8): 3 warnings
>     32r2el_defconfig (gcc-8): 3 warnings
>     allnoconfig (gcc-8): 1 warning
>     ar7_defconfig (gcc-8): 2 warnings
>     ath25_defconfig (gcc-8): 2 warnings
>     ath79_defconfig (gcc-8): 2 warnings
>     bcm47xx_defconfig (gcc-8): 2 warnings
>     bcm63xx_defconfig (gcc-8): 1 warning
>     bigsur_defconfig (gcc-8): 2 warnings
>     bmips_be_defconfig (gcc-8): 1 warning
>     bmips_stb_defconfig (gcc-8): 1 warning
>     capcella_defconfig (gcc-8): 2 warnings
>     cavium_octeon_defconfig (gcc-8): 2 warnings
>     ci20_defconfig (gcc-8): 3 warnings
>     cobalt_defconfig (gcc-8): 2 warnings
>     cu1000-neo_defconfig (gcc-8): 1 warning
>     db1xxx_defconfig (gcc-8): 1 warning
>     decstation_64_defconfig (gcc-8): 2 warnings
>     decstation_defconfig (gcc-8): 2 warnings
>     decstation_r4k_defconfig (gcc-8): 2 warnings
>     e55_defconfig (gcc-8): 2 warnings
>     fuloong2e_defconfig (gcc-8): 2 warnings
>     gcw0_defconfig (gcc-8): 1 warning
>     gpr_defconfig (gcc-8): 2 warnings
>     ip22_defconfig (gcc-8): 2 warnings
>     ip27_defconfig (gcc-8): 2 warnings
>     ip28_defconfig (gcc-8): 2 warnings
>     ip32_defconfig (gcc-8): 2 warnings
>     jazz_defconfig (gcc-8): 2 warnings
>     jmr3927_defconfig (gcc-8): 1 warning
>     lasat_defconfig (gcc-8): 1 warning
>     lemote2f_defconfig (gcc-8): 2 warnings
>     loongson1b_defconfig (gcc-8): 2 warnings
>     loongson1c_defconfig (gcc-8): 2 warnings
>     loongson3_defconfig (gcc-8): 2 warnings
>     malta_defconfig (gcc-8): 2 warnings
>     malta_kvm_defconfig (gcc-8): 2 warnings
>     malta_kvm_guest_defconfig (gcc-8): 2 warnings
>     malta_qemu_32r6_defconfig (gcc-8): 3 warnings
>     maltaaprp_defconfig (gcc-8): 2 warnings
>     maltasmvp_defconfig (gcc-8): 2 warnings
>     maltasmvp_eva_defconfig (gcc-8): 2 warnings
>     maltaup_defconfig (gcc-8): 2 warnings
>     maltaup_xpa_defconfig (gcc-8): 2 warnings
>     markeins_defconfig (gcc-8): 2 warnings
>     mips_paravirt_defconfig (gcc-8): 2 warnings
>     mpc30x_defconfig (gcc-8): 2 warnings
>     msp71xx_defconfig (gcc-8): 2 warnings
>     mtx1_defconfig (gcc-8): 2 errors, 1 warning
>     nlm_xlp_defconfig (gcc-8): 2 warnings
>     nlm_xlr_defconfig (gcc-8): 2 warnings
>     omega2p_defconfig (gcc-8): 1 warning
>     pic32mzda_defconfig (gcc-8): 2 warnings
>     pistachio_defconfig (gcc-8): 2 warnings
>     pnx8335_stb225_defconfig (gcc-8): 2 warnings
>     qi_lb60_defconfig (gcc-8): 2 warnings
>     rb532_defconfig (gcc-8): 2 warnings
>     rbtx49xx_defconfig (gcc-8): 2 warnings
>     rm200_defconfig (gcc-8): 3 warnings
>     rt305x_defconfig (gcc-8): 2 warnings
>     sb1250_swarm_defconfig (gcc-8): 2 warnings
>     tb0219_defconfig (gcc-8): 2 warnings
>     tb0226_defconfig (gcc-8): 2 warnings
>     tb0287_defconfig (gcc-8): 2 warnings
>     tinyconfig (gcc-8): 1 warning
>     vocore2_defconfig (gcc-8): 1 warning
>     workpad_defconfig (gcc-8): 2 warnings
>     xway_defconfig (gcc-8): 2 warnings
>
> riscv:
>     allnoconfig (gcc-8): 1 error
>     rv32_defconfig (gcc-8): 6 warnings
>     tinyconfig (gcc-8): 1 error
>
> x86_64:
>     allmodconfig (clang-9): 4 warnings
>     defconfig (clang-9): 2 errors
>     tinyconfig (gcc-8): 1 warning
>
> Errors summary:
>
>     4    ERROR: modpost: "mtk_mmsys_ddp_disconnect" [drivers/gpu/drm/medi=
atek/mediatek-drm.ko] undefined!
>     4    ERROR: modpost: "mtk_mmsys_ddp_connect" [drivers/gpu/drm/mediate=
k/mediatek-drm.ko] undefined!
>     3    ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm971=
2.ko] undefined!
>     2    arch/riscv/kernel/stacktrace.c:78:8: error: =E2=80=98sp_in_globa=
l=E2=80=99 undeclared (first use in this function); did you mean =E2=80=98s=
pin_lock=E2=80=99?
>     2    /home/buildslave/workspace/kernel-build@2/linux/build/../drivers=
/clk/mmp/clk.c:192: undefined reference to `mmp_clk_register_pll'
>     1    sound/soc/codecs/wm9712.c:94:3: error: =E2=80=98const struct reg=
map_config=E2=80=99 has no member named =E2=80=98num_reg_defaults=E2=80=99
>     1    sound/soc/codecs/wm9712.c:93:3: error: =E2=80=98const struct reg=
map_config=E2=80=99 has no member named =E2=80=98reg_defaults=E2=80=99
>     1    sound/soc/codecs/wm9712.c:91:3: error: =E2=80=98const struct reg=
map_config=E2=80=99 has no member named =E2=80=98volatile_reg=E2=80=99
>     1    sound/soc/codecs/wm9712.c:89:3: error: =E2=80=98const struct reg=
map_config=E2=80=99 has no member named =E2=80=98cache_type=E2=80=99
>     1    sound/soc/codecs/wm9712.c:88:3: error: =E2=80=98const struct reg=
map_config=E2=80=99 has no member named =E2=80=98max_register=E2=80=99
>     1    sound/soc/codecs/wm9712.c:87:3: error: =E2=80=98const struct reg=
map_config=E2=80=99 has no member named =E2=80=98val_bits=E2=80=99
>     1    sound/soc/codecs/wm9712.c:86:3: error: =E2=80=98const struct reg=
map_config=E2=80=99 has no member named =E2=80=98reg_stride=E2=80=99
>     1    sound/soc/codecs/wm9712.c:85:3: error: =E2=80=98const struct reg=
map_config=E2=80=99 has no member named =E2=80=98reg_bits=E2=80=99
>     1    sound/soc/codecs/wm9712.c:84:35: error: storage size of =E2=80=
=98wm9712_regmap_config=E2=80=99 isn=E2=80=99t known
>     1    sound/soc/codecs/wm9712.c:84:21: error: variable =E2=80=98wm9712=
_regmap_config=E2=80=99 has initializer but incomplete type
>     1    sound/soc/codecs/wm9712.c:80:10: error: implicit declaration of =
function =E2=80=98regmap_ac97_default_volatile=E2=80=99 [-Werror=3Dimplicit=
-function-declaration]
>     1    sound/soc/codecs/wm9712.c:675:3: error: implicit declaration of =
function =E2=80=98snd_soc_component_exit_regmap=E2=80=99; did you mean =E2=
=80=98snd_soc_component_trigger=E2=80=99? [-Werror=3Dimplicit-function-decl=
aration]
>     1    sound/soc/codecs/wm9712.c:662:2: error: implicit declaration of =
function =E2=80=98snd_soc_component_init_regmap=E2=80=99; did you mean =E2=
=80=98snd_soc_component_trigger=E2=80=99? [-Werror=3Dimplicit-function-decl=
aration]
>     1    sound/soc/codecs/wm9712.c:653:12: error: implicit declaration of=
 function =E2=80=98regmap_init_ac97=E2=80=99; did you mean =E2=80=98memmap_=
init_zone=E2=80=99? [-Werror=3Dimplicit-function-declaration]
>     1    drivers/clocksource/timer-vf-pit.c:194: error: unterminated argu=
ment list invoking macro "BUG_ON"
>     1    drivers/clocksource/timer-vf-pit.c:131:8: error: expected =E2=80=
=98;=E2=80=99 at end of input
>     1    drivers/clocksource/timer-vf-pit.c:131:2: error: =E2=80=98BUG_ON=
=E2=80=99 undeclared (first use in this function)
>     1    drivers/clocksource/timer-vf-pit.c:131:2: error: expected declar=
ation or statement at end of input
>     1    clang: error: assembler command failed with exit code 1 (use -v =
to see invocation)
>     1    ERROR: modpost: "sysrq_toggle_support" [drivers/tty/serial/seria=
l_core.ko] undefined!
>     1    ERROR: modpost: "sysrq_mask" [drivers/tty/serial/serial_core.ko]=
 undefined!
>     1    ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm971=
3.ko] undefined!
>     1    ERROR: modpost: "snd_ac97_reset" [sound/soc/codecs/snd-soc-wm970=
5.ko] undefined!
>     1    ERROR: modpost: "rd_full" [drivers/gpu/drm/msm/msm.ko] undefined=
!
>     1    /tmp/cpudeadline-9c7247.s:76: Error: `%ecx' not allowed with `or=
b'
>     1    /home/buildslave/workspace/workspace/kernel-build@3/linux/build/=
../drivers/clk/mmp/clk.c:192: undefined reference to `mmp_clk_register_pll'
>
> Warnings summary:
>
>     125  <stdin>:1520:2: warning: #warning syscall process_madvise not im=
plemented [-Wcpp]
>     98   arch/arm/boot/dts/bcm2835-rpi.dtsi:18.4-15: Warning (dma_ranges_=
format): /soc/firmware:dma-ranges: empty "dma-ranges" property but its #add=
ress-cells (2) differs from /soc (1)
>     80   arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi:1086.4-52: Warning=
 (dma_ranges_format): /soc/dram-controller@1c62000:dma-ranges: "dma-ranges"=
 property has invalid length (12 bytes) (parent #address-cells =3D=3D 1, ch=
ild #address-cells =3D=3D 2, #size-cells =3D=3D 1)
>     25   scripts/dtc/include-prefixes/arm/bcm2835-rpi.dtsi:18.4-15: Warni=
ng (dma_ranges_format): /soc/firmware:dma-ranges: empty "dma-ranges" proper=
ty but its #address-cells (2) differs from /soc (1)
>     15   arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: =
Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property b=
ut its #size-cells (1) differs from / (2)
>     15   arch/arm64/boot/dts/broadcom/stingray/stingray-usb.dtsi:7.3-14: =
Warning (dma_ranges_format): /usb:dma-ranges: empty "dma-ranges" property b=
ut its #address-cells (1) differs from / (2)
>     11   arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:523.3-30: Wa=
rning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10:reg: I2C ad=
dress must be less than 10-bits, got "0x40000010"
>     11   arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:521.11-525.4=
: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@380/ipmb0@10: I2C bu=
s unit address format error, expected "40000010"
>     11   arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:437.3-30: Wa=
rning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10:reg: I2C ad=
dress must be less than 10-bits, got "0x40000010"
>     11   arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts:435.11-439.4=
: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@140/ipmb0@10: I2C bu=
s unit address format error, expected "40000010"
>     9    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer f=
rom integer of different size [-Wint-to-pointer-cast]
>     8    WARNING: unmet direct dependencies detected for SND_SOC_WM9712
>     8    1 warning generated.
>     5    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_ran=
ges_format): /soc:dma-ranges: empty "dma-ranges" property but its #size-cel=
ls (1) differs from / (2)
>     5    arch/arm64/boot/dts/qcom/ipq6018.dtsi:127.3-14: Warning (dma_ran=
ges_format): /soc:dma-ranges: empty "dma-ranges" property but its #address-=
cells (1) differs from / (2)
>     4    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer f=
rom integer of different size [-Wint-to-pointer-cast]
>     2    arch/arm/lib/xor-neon.c:30:2: warning: This code requires at lea=
st version 4.6 of GCC [-W#warnings]
>     2    arch/arm/boot/dts/integratorap.dts:12.2-43: Warning (dma_ranges_=
format): /:dma-ranges: Root node has a "dma-ranges" property
>     2    WARNING: unmet direct dependencies detected for SND_SOC_WM9713
>     2    WARNING: unmet direct dependencies detected for SND_SOC_WM9705
>     2    <stdin>:830:2: warning: #warning syscall fstat64 not implemented=
 [-Wcpp]
>     2    <stdin>:1511:2: warning: #warning syscall clone3 not implemented=
 [-Wcpp]
>     2    <stdin>:1127:2: warning: #warning syscall fstatat64 not implemen=
ted [-Wcpp]
>     2    #warning This code requires at least version 4.6 of GCC
>     1    {standard input}:141: Warning: macro instruction expanded into m=
ultiple instructions
>     1    sound/soc/codecs/wm9712.c:93:18: warning: excess elements in str=
uct initializer
>     1    sound/soc/codecs/wm9712.c:91:18: warning: excess elements in str=
uct initializer
>     1    sound/soc/codecs/wm9712.c:89:16: warning: excess elements in str=
uct initializer
>     1    sound/soc/codecs/wm9712.c:88:18: warning: excess elements in str=
uct initializer
>     1    sound/soc/codecs/wm9712.c:87:14: warning: excess elements in str=
uct initializer
>     1    sound/soc/codecs/wm9712.c:86:16: warning: excess elements in str=
uct initializer
>     1    sound/soc/codecs/wm9712.c:85:14: warning: excess elements in str=
uct initializer
>     1    sound/soc/codecs/wm9712.c:653:10: warning: assignment to =E2=80=
=98struct regmap *=E2=80=99 from =E2=80=98int=E2=80=99 makes pointer from i=
nteger without a cast [-Wint-conversion]
>     1    sound/soc/codecs/cros_ec_codec.c:776:12: warning: stack frame si=
ze of 1152 bytes in function 'wov_hotword_model_put' [-Wframe-larger-than=
=3D]
>     1    security/integrity/ima/ima_crypto.c:512:5: warning: stack frame =
size of 1152 bytes in function 'ima_calc_field_array_hash' [-Wframe-larger-=
than=3D]
>     1    net/sched/cls_flower.c:331:1: warning: the frame size of 1032 by=
tes is larger than 1024 bytes [-Wframe-larger-than=3D]
>     1    mm/kasan/common.o: warning: objtool: kasan_report()+0x87: call t=
o __stack_chk_fail() with UACCESS enabled
>     1    include/linux/kernel.h:47:25: warning: excess elements in struct=
 initializer
>     1    include/linux/kern_levels.h:5:18: warning: format =E2=80=98%lu=
=E2=80=99 expects argument of type =E2=80=98long unsigned int=E2=80=99, but=
 argument 2 has type =E2=80=98unsigned int=E2=80=99 [-Wformat=3D]
>     1    drivers/soc/fsl/dpio/qbman-portal.c:870:14: warning: cast from p=
ointer to integer of different size [-Wpointer-to-int-cast]
>     1    drivers/soc/fsl/dpio/dpio-service.c:476:5: warning: stack frame =
size of 1072 bytes in function 'dpaa2_io_service_enqueue_multiple_desc_fq' =
[-Wframe-larger-than=3D]
>     1    drivers/scsi/bfa/bfa_fcs_lport.c:1900:1: warning: stack frame si=
ze of 1824 bytes in function 'bfa_fcs_lport_fdmi_build_rhba_pyld' [-Wframe-=
larger-than=3D]
>     1    drivers/net/phy/mdio-octeon.c:48:3: warning: cast from pointer t=
o integer of different size [-Wpointer-to-int-cast]
>     1    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:77:13=
: warning: stack frame size of 5648 bytes in function 'calculate_bandwidth'=
 [-Wframe-larger-than=3D]
>     1    drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dce_calcs.c:3014:=
6: warning: stack frame size of 1376 bytes in function 'bw_calcs' [-Wframe-=
larger-than=3D]
>     1    drivers/firmware/efi/libstub/file.c:123:21: warning: stack frame=
 size of 1232 bytes in function 'handle_cmdline_files' [-Wframe-larger-than=
=3D]
>     1    drivers/crypto/inside-secure/safexcel_cipher.c:404:12: warning: =
stack frame size of 1136 bytes in function 'safexcel_aead_setkey' [-Wframe-=
larger-than=3D]
>     1    drivers/clocksource/timer-vf-pit.c:97:20: warning: =E2=80=98pit_=
timer_interrupt=E2=80=99 defined but not used [-Wunused-function]
>     1    drivers/clocksource/timer-vf-pit.c:56:19: warning: =E2=80=98pit_=
clocksource_init=E2=80=99 defined but not used [-Wunused-function]
>     1    drivers/clocksource/timer-vf-pit.c:131:2: warning: no return sta=
tement in function returning non-void [-Wreturn-type]
>     1    drivers/clocksource/timer-vf-pit.c:126:19: warning: =E2=80=98pit=
_clockevent_init=E2=80=99 defined but not used [-Wunused-function]
>     1    drivers/clocksource/timer-vf-pit.c:117:34: warning: =E2=80=98clo=
ckevent_pit=E2=80=99 defined but not used [-Wunused-variable]
>     1    drivers/block/paride/bpck.c:32: warning: "PC" redefined
>     1    cc1: some warnings being treated as errors
>     1    arch/x86/kernel/signal.o: warning: objtool: x32_setup_rt_frame()=
+0x1fa: call to memset() with UACCESS enabled
>     1    arch/x86/kernel/signal.o: warning: objtool: __setup_rt_frame()+0=
x1f8: call to memset() with UACCESS enabled
>     1    arch/x86/ia32/ia32_signal.o: warning: objtool: ia32_setup_rt_fra=
me()+0x1ef: call to memset() with UACCESS enabled
>     1    arch/mips/configs/ci20_defconfig:178:warning: override: reassign=
ing to symbol LEDS_TRIGGER_ONESHOT
>     1    2 warnings generated.
>     1    /tmp/test-arm-e023be.s:18788: Warning: using r15 results in unpr=
edictable behaviour
>     1    /tmp/test-arm-e023be.s:18713: Warning: using r15 results in unpr=
edictable behaviour
>     1    /tmp/ccbU4HdL.s:18191: Warning: using r15 results in unpredictab=
le behaviour
>     1    /tmp/ccbU4HdL.s:18119: Warning: using r15 results in unpredictab=
le behaviour
>     1    .config:1161:warning: override: UNWINDER_GUESS changes choice st=
ate
>
> Section mismatches summary:
>
>     1    WARNING: modpost: vmlinux.o(.text.unlikely+0x39dc): Section mism=
atch in reference from the function pmax_setup_memory_region() to the funct=
ion .init.text:add_memory_region()
>     1    WARNING: modpost: vmlinux.o(.text.unlikely+0x3684): Section mism=
atch in reference from the function pmax_setup_memory_region() to the funct=
ion .init.text:add_memory_region()
>
> ---
> For more info write to <info@kernelci.org>
>
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/5e7cb175.1c69fb81.d10e.6d4a%40mx.google.com.



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdkTh%2BuHOK0bd5UGGfYiFQU%2BMkeT71Yy7Ggof9FkQHCG-g%4=
0mail.gmail.com.
