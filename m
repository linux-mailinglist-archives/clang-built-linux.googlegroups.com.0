Return-Path: <clang-built-linux+bncBCIO53XE7YHBBYON375AKGQEYP67F7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB372620E7
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Sep 2020 22:17:38 +0200 (CEST)
Received: by mail-qv1-xf3b.google.com with SMTP id v14sf59598qvq.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Sep 2020 13:17:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599596257; cv=pass;
        d=google.com; s=arc-20160816;
        b=dn5xZu51sZthHD1pJ89lj73xNgunZWXP03raL5npDNDVXzEqTYdHdjFgN88GoixEZ9
         SqPhHY8oX3NBQIKFpmsAt47uQ7SKRoOm0H9la5zyaiXtgShqjhi7y37cHDnHIwk/Ao2q
         sSJTTRCoWOUwJzhfoRB0CCNCQ6tmlVPTrkaKIwiDbwVldXeMY3S3KvS1zh18fXHVJMfr
         Tn48ZGTjp7G1K1uEPspeZxADznMesLJ8Vdp1a9QzDNfHwRNjQ/hpYjpkFGD55nocAxGe
         2pqmwxYl0Te5NzA8s+JEwN/B5x0dtGoiR+h++CK2Gc1uv/N1Wbwl4ZibchBJYO0fRqcL
         0HRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=7revCgp/rDPby9oI2aSoWWblFmpZp5Z1yzQ7rgm85mk=;
        b=iyFHXDbsWZt0e1/v2LzrzQ03FMfBphQCZPwkSbmI0dL5m2QhXNeIIvWpiI5VRO/acz
         Lk+74isF99Z4vLqrSui0cH5QdBzjjj/Z13HbeOZ4np1P9NrYQZLpeueyc0BjqYtOcV/g
         VSUzQBg5Dlw5axiHMGrgfZBvZwr2oWEmlOqd77B0VaZtr+9yS3ui80Lxm1K4M1bw1EGo
         XJ32v7aqV7X2vVYbjudiMdHQzwYDC245/kngKFhscFrYt9jdocs914eVfOeckEh+QToS
         cTpkjDDSI+3lw58TCLI/vfpyuLm/U62PKwR/kMrBGBSRdzasuivzmfflSZY2Gt7rrbwt
         lnAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="qZ/9AznD";
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7revCgp/rDPby9oI2aSoWWblFmpZp5Z1yzQ7rgm85mk=;
        b=uZrs8mpiRBCfwXnGugdtMRb9KeGDElTgAkGAiaDJfrRLkTFDGcMHvGJYeTW+a6MTp5
         HDMtymhvLX8EhpM4615gq2Z6/lyLNwlOIuKIEfuk8n6Qqm9FmkqWttdvhLdptIuz8hE2
         s+iqeqTXrRIAZargEK8uEfuq8lR9/Qj6id2Y3YYtV+zpOQQfCi8qxEeWhHVQRYA38m35
         DG25kHFPZpfntqIwFTtBbVThduuKhgM1EJ0LD+FEsCqcP6CuhT1v6q5amyzNy7FNP8EO
         9X3RcrlOEDeNcFJmNFifxv7VAhaTzkAPHNx+HsAWuwmsiTJFXQ9PGcwikamC7VUP5XXi
         rNRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7revCgp/rDPby9oI2aSoWWblFmpZp5Z1yzQ7rgm85mk=;
        b=iy8Uqk29GIV/F/BfaTlS7mZnMk9PQLU6XbdnT9Na6rVf6Y2Sqxxb3vrNmFdt5mMvOv
         ZnBWZTKAIF7TRq4yi88aKlvYxxihL242t/OvmoOc5aKkmIznVjk8tRhGgjmyovbEDeMU
         gB5ycb0GdbOtCKmtVwy37oMmBNiyloSOjf0wCU+37mdCpz8pfdCNLn02LtBNGzrF4O0K
         zTpoyT6AeCRFdCinEYxEgDxRbZKMJ3B169GpEiFzvKoTHanyngIMXaK9mKfAwuIFC8Pg
         KKdcP/xyOHa7yE8o+ZlYuWSmQLy4hGxMdJt57Pc5Z+JaMcRWoJmjsqvTJJhR65Wom1EF
         afSA==
X-Gm-Message-State: AOAM533Gm9S4JCSW5JQ/b3AKmwuLGTlKt44EWmUCwx6mQkbHCaKJcYNf
	dUzRJ3JGM0esl3jfg8UeGX0=
X-Google-Smtp-Source: ABdhPJyq+YRTunWGYrwWNrbRlRra2sDJH6Yud1OWaQMmeJ7UfZFxeA7mc3tiGJdZFIZQuNtkqUcUvA==
X-Received: by 2002:ac8:568f:: with SMTP id h15mr172069qta.232.1599596257547;
        Tue, 08 Sep 2020 13:17:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:4ce:: with SMTP id 197ls249790qke.1.gmail; Tue, 08 Sep
 2020 13:17:37 -0700 (PDT)
X-Received: by 2002:a05:620a:554:: with SMTP id o20mr309628qko.205.1599596257059;
        Tue, 08 Sep 2020 13:17:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599596257; cv=none;
        d=google.com; s=arc-20160816;
        b=KmwYBkknWFtkF8TrPAZyohRFs3BEtPy+oCmtnJ3Dq73h7+FONMRhct1aOxy1bWBg55
         1okaGjKc8OzTlOCfLucvsUHXajT8NP9n+Tc65imzLjFiq7nCtYI7f27Tgf0GrpKT4LIa
         EEy0RH0KWUn5lpYKQL4BDVTePh0sJLK/xvwWH9i32P/y3sx54MqYvC0AkStm9HDCeUx4
         ov4jxmjKVE7zkk+sCTnoWkACZQ1Wv1BkwJ0KCtiRpC/bLb9nWqQAslDV33vyHH0Geh1B
         2ByoR+SVkhu+mANOs5nnzcuidBXd+NkZKrNiwfZoxSb7T8bkXUWyByThV/OGrIW5Asa6
         s9Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=/08OEII2Gc2davobAmINkHdHlTLoM3yBel115LZWEGE=;
        b=OvexPwfPdiYC4XFSiKE1wrfBjkcl3WPn0r32m6I0y/hbPBmqj7u6nlLov3zVr+hEH+
         GeppxaCTQppDbFSaVJNje5QoCbSaTEri8rjy/1ck16ZqCEcpususCxdpuPvlQ8yalz0B
         nOn7/uNwe4BCekhZ7MdE7U75Ce6BHcOPAnd7h+z8v1b6A1AJN8ak3Bx+vy6/mjB3ttEA
         LxG8WUsEVfkGDSaTFWSR0JsNoYGwQWM3AS2aCnkx2oZTijki3U54AYejp2yYfT+GzrtC
         ReRgI4QzK13aH9kkmejdFv6bGHKeKFpih8SzjpX2nhoxeR3M4HxEPjCiR0l7RlPNAsuB
         FrrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="qZ/9AznD";
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id e1si29879qka.0.2020.09.08.13.17.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Sep 2020 13:17:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id v123so344910qkd.9
        for <clang-built-linux@googlegroups.com>; Tue, 08 Sep 2020 13:17:37 -0700 (PDT)
X-Received: by 2002:a05:620a:955:: with SMTP id w21mr302081qkw.69.1599596256656;
        Tue, 08 Sep 2020 13:17:36 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id z6sm335661qkl.39.2020.09.08.13.17.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2020 13:17:35 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 8 Sep 2020 16:17:34 -0400
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Kees Cook <keescook@chromium.org>, Ingo Molnar <mingo@kernel.org>,
	Borislav Petkov <bp@suse.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 4/5] x86/build: Warn on orphan section placement
Message-ID: <20200908201734.GA87825@rani.riverdale.lan>
References: <20200902025347.2504702-1-keescook@chromium.org>
 <20200902025347.2504702-5-keescook@chromium.org>
 <20200905224835.GA1500331@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200905224835.GA1500331@rani.riverdale.lan>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="qZ/9AznD";       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Sat, Sep 05, 2020 at 06:48:35PM -0400, Arvind Sankar wrote:
> On Tue, Sep 01, 2020 at 07:53:46PM -0700, Kees Cook wrote:
> > We don't want to depend on the linker's orphan section placement
> > heuristics as these can vary between linkers, and may change between
> > versions. All sections need to be explicitly handled in the linker script.
> > 
> > Now that all sections are explicitly handled, enable orphan section
> > warnings.
> > 
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >  arch/x86/Makefile | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/arch/x86/Makefile b/arch/x86/Makefile
> > index 4346ffb2e39f..154259f18b8b 100644
> > --- a/arch/x86/Makefile
> > +++ b/arch/x86/Makefile
> > @@ -209,6 +209,10 @@ ifdef CONFIG_X86_64
> >  LDFLAGS_vmlinux += -z max-page-size=0x200000
> >  endif
> >  
> > +# We never want expected sections to be placed heuristically by the
> > +# linker. All sections should be explicitly named in the linker script.
> > +LDFLAGS_vmlinux += $(call ld-option, --orphan-handling=warn)
> > +
> >  archscripts: scripts_basic
> >  	$(Q)$(MAKE) $(build)=arch/x86/tools relocs
> >  
> > -- 
> > 2.25.1
> > 
> 
> With LLVM=1 and GCOV_KERNEL/GCOV_PROFILE_ALL enabled, there are
> .eh_frame sections created. I see that KASAN and KCSAN currently discard
> them. Does GCOV actually need them or should it also discard?
> 
> Thanks.

Also, with LLD 10.0.1 which is going to be the minimum supported
version, the relocation sections etc still generate warnings.

ld.lld: warning:
arch/x86/video/built-in.a(fbdev.o):(.rela.orc_unwind_ip) is being placed
in '.rela.orc_unwind_ip'
ld.lld: warning: .tmp_vmlinux.kallsyms2.o:(.rela.rodata) is being placed
in '.rela.rodata'
ld.lld: warning: <internal>:(.bss.rel.ro) is being placed in
'.bss.rel.ro'
ld.lld: warning: <internal>:(.eh_frame) is being placed in '.eh_frame'
ld.lld: warning: <internal>:(.symtab_shndx) is being placed in
'.symtab_shndx'

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200908201734.GA87825%40rani.riverdale.lan.
