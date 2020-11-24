Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBKUP636QKGQEI7TPNBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC762C33D3
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 23:22:36 +0100 (CET)
Received: by mail-qk1-x73d.google.com with SMTP id 198sf115336qkj.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 14:22:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606256554; cv=pass;
        d=google.com; s=arc-20160816;
        b=ty9z19iK5l2zrqgp3bnvTdmI/0KEp5WX6jITD+R6wwyWbK0PYBwdZ0gIqhYiJBREel
         Eh4RY8F52TTrLP962AZVSfgm8LTMe2jaES2M1zAeCg8OFoR9Na0RanKuR6QtssVSBJFm
         XbgEFnI4Ldr5sWT7Rb+UHRn8z+W8YbRHMUzAU/g/DGm8Pjvd18O2sRJ0bNBbbuZXXe90
         BpDIBdBFqKjv9kZNeeEYIOTc+K0DlXaFM4wpL009XIyGSrbMgRHq2u6nNIYFzAqxRHRM
         9hYoZWRAdcazUpJUlmLN1qbIUVjbFGuJ+tVda/rcZjtWNJJ/EGH36w5RhRXhkxXXiIg2
         gFHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=u4209WBF3MO128BZBOiOvOGMf5r15KpbbacmovsT1bo=;
        b=nQEC3Il9zDzve/bV5TbKCt1q6tjwFGpOd6d4BRJQ2ljIzgref2k1H6W4ZXjzd4hmu4
         mQck8L4zaWAZgQLoXMVrMbfPhLJAsQ2/D4oSd58npKiBUHH8qleBaT7D2jLhZ/iZX1oK
         4Q4/CjXVbhpkdj7/u0cJ96WBr1l6G66IesduwyBzgU2ChUYHyb3rJgeZ7FUgui4UWLDr
         V2MpQQh+AUQ7Nh/4wcAuM8XAFOBU3SpWnQchpruVEGhhHCJKEF3KyoUYEOaJlN/S8ghi
         VcjdR4KHVerDE4ieGee8sFaJMM1wlMBxu5d0/lu0yF3gu8tRfw5kk3vsa3KqEZc9HbWy
         adJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=NfPq1wTh;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=u4209WBF3MO128BZBOiOvOGMf5r15KpbbacmovsT1bo=;
        b=lXC1CuhzVv0tTN/MFijIsn2AD5IkNb/yc2OJcB7wPVLNMdcaE7WGRqMKL9CQ+gyuyC
         vzQ5qXZnmmQrdBI5kyIRPhFShsFifaqA/zsb9UYERNqU7aBeRKBX5lSy4Dm97M7q7gMS
         WmoLFm5YXKw4Gz9w7XlW2SVVeqU5xOapkQTu/Cm/vFJ/gipv6GZXBgIxCH3V0iryixbV
         Jwf7kfW3kZSZgl414AhXpjjDtGLof00h2hB0YJTvbQLK5q0w4I8TXHMosncf91DTVzdR
         D/KigUqqUQ68MbXMwuv0nLfUCbXpJhZqcVu7F12Xv2D4e21cOKqoui+zDFjfZ/rTZzez
         ei0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=u4209WBF3MO128BZBOiOvOGMf5r15KpbbacmovsT1bo=;
        b=UpMGxZdNz9GN4GiQjlKe+9DufkfbyJL5vo9E0LTeqaq7P6IS1Y8IRa9N/A1MZAi5M3
         KjkF6NndRdTGo0qRqmb7rD2a6LORSD0MtY4K9Y4qfAHZNORs3L+CZ2JIEckGono4kpg7
         ASfby9DkwGlzweZJUbhJZNiQA/C941YNBJbFYaNJLaoi0NYKnFZSi01kxRDMKbG5knQp
         Coshkb15D7Y5xLUlPDN+jEXRyW4aDlfGx8dxZLD/TBhBCia6DJAwsDSYN4V3nTHjUrpN
         2aM+lWrOJfqbo3AB9Gt4bgPtMenxWBGtn+CFmdBVNTL2exaE2Mnbiv57hUksk/nDMipB
         jr1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530pDXJqqUrb80MGTXMBdrSGADUe4/q892midsnbI1O8XR8TR67H
	kxs10tMVVMSgMllYGz/dfjQ=
X-Google-Smtp-Source: ABdhPJzQbG1ZTcQsmQZZ6V+pPMZQHCm1QTd00XeTkA+GysRaRLh66NjsSwI5NVFzgNxpXQ1StNF/KA==
X-Received: by 2002:aed:34a6:: with SMTP id x35mr305939qtd.200.1606256554761;
        Tue, 24 Nov 2020 14:22:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:8d0:: with SMTP id da16ls66521qvb.7.gmail; Tue, 24
 Nov 2020 14:22:34 -0800 (PST)
X-Received: by 2002:ad4:4052:: with SMTP id r18mr850233qvp.38.1606256554439;
        Tue, 24 Nov 2020 14:22:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606256554; cv=none;
        d=google.com; s=arc-20160816;
        b=ji/vYK4OmwcInAVObVQ+2kTNW/t4uqbGUEGyi2uInusSPMt2hJARzLIaB3g2BK1zAX
         eT2BKBEfOBg+UchXqCznnqgJ4FOLAjRPzmOH8QYzK2Vubivw3Y3wKmMKn7mPkvIyEwoT
         YlqbKUtQtz/BqtUPPgsxUgs94AwKs0AWl32KAQTsF7IplLFvI/yh5nRasT399Ur3HDSe
         EZGgx82rysWY4oqLHbgBnTclNkLBIfR7fRc32GcWhoveENIW2A3MYLMCfyh1xshmk33m
         Bazis0AJYN49CedMFwoh0HW1rhpgclPaJ0PTmM2iwOqrJQX1ctwl3PcKHkPc/lA2XOC/
         nl6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=pJHeWjaBdZwomXBYbMExLuGxVcJ2kE2YHepOItpGyl8=;
        b=mPqW1bcNDCUMXK0Wr5DkfyTylK1GSw3cYv0r8789k3TUou7mhh35kzfmzDPH/xbcKH
         yHbtMB+T1Id6zvjy4dtnLwqHwYwvW46/yNFPy0MMNgP4RiIbUhWVfziw4WwZH6DWuZJf
         Hcs0/jQHkPzabZaovVH7njYDS9ykUmqslqV3vRAVz9fL0OcKXis2kPF1w6S4KDQKs+zm
         OC1ettyKQj47ZPC+kfHh7/e97KETvVCCLkxC/bev9T23vTSGaCMccV+riTbMTHd13rlg
         9aORDN4c51YPuebtPSoQzSbH/7WAbB6RUPVcp2LAubgChB9Eh3G0RR6Sr1+s/r1sXiAj
         eMbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=NfPq1wTh;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id f16si19201qkg.3.2020.11.24.14.22.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Nov 2020 14:22:34 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id s63so474330pgc.8
        for <clang-built-linux@googlegroups.com>; Tue, 24 Nov 2020 14:22:34 -0800 (PST)
X-Received: by 2002:a63:e0f:: with SMTP id d15mr453658pgl.310.1606256553666;
        Tue, 24 Nov 2020 14:22:33 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z29sm175922pgc.68.2020.11.24.14.22.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2020 14:22:32 -0800 (PST)
Date: Tue, 24 Nov 2020 14:22:31 -0800
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Russell King <linux@armlinux.org.uk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	LKML <linux-kernel@vger.kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"kernelci . org bot" <bot@kernelci.org>,
	Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2 2/2] kbuild: Disable CONFIG_LD_ORPHAN_WARN for ld.lld
 10.0.1
Message-ID: <202011241421.A2F3062A70@keescook>
References: <20201113195553.1487659-1-natechancellor@gmail.com>
 <20201119204656.3261686-2-natechancellor@gmail.com>
 <CAKwvOdkPgwL8H4EGF6=-VuxTdmxA8JHhGbLHVYcLJj9MmAvW=g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkPgwL8H4EGF6=-VuxTdmxA8JHhGbLHVYcLJj9MmAvW=g@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=NfPq1wTh;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Nov 19, 2020 at 01:13:27PM -0800, Nick Desaulniers wrote:
> On Thu, Nov 19, 2020 at 12:57 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > ld.lld 10.0.1 spews a bunch of various warnings about .rela sections,
> > along with a few others. Newer versions of ld.lld do not have these
> > warnings. As a result, do not add '--orphan-handling=warn' to
> > LDFLAGS_vmlinux if ld.lld's version is not new enough.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1187
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1193
> > Reported-by: Arvind Sankar <nivedita@alum.mit.edu>
> > Reported-by: kernelci.org bot <bot@kernelci.org>
> > Reported-by: Mark Brown <broonie@kernel.org>
> > Reviewed-by: Kees Cook <keescook@chromium.org>
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> 
> Thanks for the additions in v2.
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

I'm going to carry this for a few days in -next, and if no one screams,
ask Linus to pull it for v5.10-rc6.

Thanks!

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011241421.A2F3062A70%40keescook.
