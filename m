Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCX62CCAMGQEAZWFIRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 488F1375B74
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 May 2021 21:10:04 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id q17-20020a05651c0551b02900bdd1e782edsf3315059ljp.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 May 2021 12:10:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620328204; cv=pass;
        d=google.com; s=arc-20160816;
        b=qUMXVa3pilQYQEWWtn/J1rWAr4Ln2hriC6tNmtrcUwFI3qIdwMB2NZFcBjDWGUp9QT
         0SfKIbCYLGlYG2Xv4n+F5jTgf3oL2zviwdPQC04R9BemXLHG2WhRlfIIOS58m3iK66ZN
         1X456aqXf2q4lklm51q2qQdxwdC0jI8E/uw+iNE5ag67RzzHt1BAj78AMWzmg0TyzCh8
         lxc3BaDsArvdrXeGZ24Q0n+mD0SnWqytQAu9z9Mg2e5lrIMpr8LiuImu9qw7DYu51Dcs
         11eXmbDDDnNtF5inPOIO8HBIC70ekvxvBPwLzEcZVWI64iPC7c1BkWBDr9WDBuKASioL
         YfAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=l4/Y/m1bJJ6SVH/M2FRkUgIebfSAvqp6QvszUyZ8kmM=;
        b=MvJX3wGa+UAw9MrOcCq4Qen0DyQ0CjzZFq0oRS098eYns7l+macbak/YH3ppvds5gq
         aeRFp9wiPO9wCXRIEIOrkKMVCB95wOD606IsFesX6+ZifE5XexZb4M5k8Zjnu32L04TB
         bSeO+VxVvP8YNZD6EM8jK7FKHP+Za+mdJMMX21rE4ZFf5NILliKAnNWXPsUaWWd4aoe5
         ObVeI7pXNLEWcIH6x98PfdPENb/shLF3V1hi9KukYqPmjDztdtBXDgT6eFT1Tab62WmU
         13alLuDE6nQUfzEW7MMZ+uKLLCcz4cRByYgS10swWc1lu+Z2bbEICMnY+iVHPmLtFmPM
         F4tA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XwOmjoHS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l4/Y/m1bJJ6SVH/M2FRkUgIebfSAvqp6QvszUyZ8kmM=;
        b=lTP/9eu991XRMfZNrSFCbqepA0axdycSFE3UU5dG79KRhL/C3eoE8f/p/7Ju6IL/cd
         nBoGqnO18GBe2jwIrAh6ZZ0lkF4atjClj0NmbuSbkbKxFurgdEhFvbGZNz9/CQPHBzZa
         OI0v1SdNsxMIM7Ut+YlWEaJx7GGD+cVzVmiRx+qdi8kHTsIvib8w4Zjow/10pf2Yk5Ch
         jFVWD5ojw78Yre9E9viDAzUUzj6HAq/8vOpCwzUPV+cDg/A0Kw/q+ZXF/RFmtXX2sMze
         TDeU4yHhnq62bz4rnuQ3XOfIM0Avo2cJgx271kBZBa6A/16Kzt6j2q+wqkKo++Ptaldz
         lrww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l4/Y/m1bJJ6SVH/M2FRkUgIebfSAvqp6QvszUyZ8kmM=;
        b=D1avyXDhfcP9aw2WZmMaTUFeolxq5a0u3mWksUp0gO1LMs9JbAJbd8gytUoJ2ymfr7
         HzxN6mkVjY9giXmybNgGf7IB/SXPfpnCefJejCm39SKPHXgDaPbM0WZLvJDJFBn1Qbbq
         O7K3Qh+Fe0WHexbVPJA9Nblt3MthXWok3dMOkNP8gDraj4qM2w8eME5NJi4mLSh15ILF
         h6ZQrEFzdhGI2euJHL7Kac3KgPMegEXxQ1t2VL/+IACrmU9RC5VFDe41tA7/ZP9xvfyS
         FtcU/G81m827wXDdt14jbgV4mj48GbBTFdHpYUjuHqe1q65pEuxLor1JoJBlxXtsyX9f
         wXFg==
X-Gm-Message-State: AOAM530ru2pUFDbOsgUSq0WypCfL3j1C4E2lHEevfVZjAXqEQ41DlAsx
	O5DqO5YN0rNWHZUJS3b50bo=
X-Google-Smtp-Source: ABdhPJyGlbqqc+YvgD1TmNK+c+REyH2t56G6kyrjiJFB3Il9UP+XJwnWsDprrB6Y47gbIpvMEc6lig==
X-Received: by 2002:a2e:9e86:: with SMTP id f6mr4693919ljk.191.1620328202400;
        Thu, 06 May 2021 12:10:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:6c2:: with SMTP id u2ls2067559lff.3.gmail; Thu, 06
 May 2021 12:09:59 -0700 (PDT)
X-Received: by 2002:a05:6512:1283:: with SMTP id u3mr3953131lfs.386.1620328199871;
        Thu, 06 May 2021 12:09:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620328199; cv=none;
        d=google.com; s=arc-20160816;
        b=jNtxh+xfEQD+dDb6US5VryIg3Mx00venjHIggx2ZD1YwBd/ySn1uGttfHBJzZizp1T
         8fUVYwE0xxv0NAAp9rbJ6/P+xYcMcc9dYX2k86NaDiEzht/d0x4TbR6f2qY2jixv5Eo/
         9Z/3NV+8Op8A/vNIeNcYHgzJNjK+CPi/j0YHcjuG+E7vxp4OIN/kM9jffm6XkVy5Alrq
         g0l41afNrHx66+iDBFDRA4RS24nl5Ka896mNvHDpMNGFsyzfmIEai/v7duUtvGx6h7Th
         O+sJDvoFwImMaUiemf/bZ64hPXO/kHRWp0qG2BtSqtW6qvFDx12WEnj6VOYNDFLtOa8l
         Kz1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=EG9jOwFiA84QsvXeKtkPJx4Wd5oR6cikulbbKxFKoQw=;
        b=W8C0diN+r3clzwT4iGhLcEyW0DSGTk/zhc2fRNAxY4uEvN0n4bP15DABf5HFxSIteM
         zP/7MsecvKP/4MdqG51nyVKKgoJKK8l9EeORbINVUBkHwUSeZSd9DnMQQJy+ruklKnJb
         C9qe7E/pSxbedZ7sEc9EcnXP5SsZG8+pn+ALL90yegZnf7alFVYjaI5xT/wuMlbTovsK
         1dBnCC+fqP+FOo+MfN1zU6vQk4Xkny9qx3TlsaWbVVaHBMxNcwrjSYi/DN5orQ1oXaTe
         uPYEmGyvw/sTNlHkcZ/hcTRG997MP2Qzf/YrjoMRDsk0H1XG/R0LdtQ0utjyjhdOW1y/
         n1Fw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XwOmjoHS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com. [2a00:1450:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id z8si129087lji.4.2021.05.06.12.09.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 May 2021 12:09:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) client-ip=2a00:1450:4864:20::22e;
Received: by mail-lj1-x22e.google.com with SMTP id w15so8435375ljo.10
        for <clang-built-linux@googlegroups.com>; Thu, 06 May 2021 12:09:59 -0700 (PDT)
X-Received: by 2002:a2e:8e3a:: with SMTP id r26mr4681534ljk.244.1620328198003;
 Thu, 06 May 2021 12:09:58 -0700 (PDT)
MIME-Version: 1.0
References: <202105010813.KwuE0a5t-lkp@intel.com> <CAKwvOdnQ+hiGxfsG5VeJO4qGqfRPvf=Mp7TRgjKzZnTspZjntA@mail.gmail.com>
In-Reply-To: <CAKwvOdnQ+hiGxfsG5VeJO4qGqfRPvf=Mp7TRgjKzZnTspZjntA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 6 May 2021 12:09:46 -0700
Message-ID: <CAKwvOd=0_KbumyVLS2dn2DiKes50oG3te4Cd4aTAxnc5moERuw@mail.gmail.com>
Subject: Re: arm-linux-gnueabi-ld: warning: orphan section `__cpuidle_method_of_table'
 from `arch/arm/mach-omap2/pm33xx-core.o' being placed in section `__cpuidle_method_of_table'
To: Kees Cook <keescook@chromium.org>, Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: kbuild-all@lists.01.org, LKML <linux-kernel@vger.kernel.org>, 
	Ingo Molnar <mingo@kernel.org>, kernel test robot <lkp@intel.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, khilman@kernel.org, 
	robherring2@gmail.com, Catalin Marinas <catalin.marinas@arm.com>, 
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XwOmjoHS;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e
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

+ folks from commit 449e056c76cc ("ARM: cpuidle: Add a cpuidle ops
structure to be used for DT")

On Thu, May 6, 2021 at 12:05 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Fri, Apr 30, 2021 at 5:11 PM kernel test robot <lkp@intel.com> wrote:
> >
> > Hi Kees,
> >
> > FYI, the error/warning still remains.
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> > head:   65ec0a7d24913b146cd1500d759b8c340319d55e
> > commit: 5a17850e251a55bba6d65aefbfeacfa9888cd2cd arm/build: Warn on orphan section placement
> > date:   8 months ago
> > config: arm-randconfig-r024-20210501 (attached as .config)
> > compiler: arm-linux-gnueabi-gcc (GCC) 9.3.0
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=5a17850e251a55bba6d65aefbfeacfa9888cd2cd
> >         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> >         git fetch --no-tags linus master
> >         git checkout 5a17850e251a55bba6d65aefbfeacfa9888cd2cd
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-9.3.0 make.cross W=1 ARCH=arm
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> arm-linux-gnueabi-ld: warning: orphan section `__cpuidle_method_of_table' from `arch/arm/mach-omap2/pm33xx-core.o' being placed in section `__cpuidle_method_of_table'
> > >> arm-linux-gnueabi-ld: warning: orphan section `__cpuidle_method_of_table' from `arch/arm/mach-omap2/pm33xx-core.o' being placed in section `__cpuidle_method_of_table'
> > >> arm-linux-gnueabi-ld: warning: orphan section `__cpuidle_method_of_table' from `arch/arm/mach-omap2/pm33xx-core.o' being placed in section `__cpuidle_method_of_table'
>
> Filed: https://github.com/ClangBuiltLinux/linux/issues/1372 (though
> this isn't specific to clang).
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D0_KbumyVLS2dn2DiKes50oG3te4Cd4aTAxnc5moERuw%40mail.gmail.com.
