Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZHNUT2AKGQEAAIDWLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 004FE19E850
	for <lists+clang-built-linux@lfdr.de>; Sun,  5 Apr 2020 03:39:49 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id y7sf11862627ybj.15
        for <lists+clang-built-linux@lfdr.de>; Sat, 04 Apr 2020 18:39:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586050789; cv=pass;
        d=google.com; s=arc-20160816;
        b=x+CECb+WamWQZ+hWJ0jzpkZqmm9HMkfByk179houMjVFF35/ItnPqxkTANTvHz/Mxk
         or0IQSlV2yy5k+cVvTRxLRIiP97haV6PHvJB9CJA/Aa0vaM5aFnairT1BNPdI2sqB4hs
         RxmS3CD4fnl5q6gzPSg3+8idBcnW5BQwRLxx3GlbcOzTTZ/CBYECErQNWSNCEmqRwpg+
         b9PASWCmV8Jhu6apEG+XNtSzJbvCb6nAc2BQaB0udSE+VI/iiXQE6iGeDH+TGDmP/FMz
         JGjpw4rxRWljvNObw71Dy+lZGSTNfSQZdnhkxZBf3AwSKmd4xaxa0CFSB72MgXABSNa7
         +9Tw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=STkn2ltutDdF3s5YjmV47aphI5P7iGsaBnl09q5dcwM=;
        b=iCL6wP5iE1huVbYtFhDJAmybG43d+4VpoAqPzhX2nm+bs9mySaaz1Cp/kaG2Kg/DPQ
         HeW1vhOuy6piN066fbSK2EkDm78vEjKwqPeCgExb4sjdXKi7TNX7kAZ1uqRRAXJpfxH5
         HO40tt+FtvrBXKS23NFJJZyyBNzmnePifJ8OoydP3GCcasxsE2DlBk0ZZGpzRfYcZrVC
         dKWCtYPs6iGwRYFSWj0VRGVw6mRMm3V75St9qFX2dzNEZNcoYTlfIknSxVqCZNYERqHc
         q9BRrJxv6UpCjjFs47ITP8hFXrdtoM2HaHqoo3Xed++FW/JMEIGLPqpZHNvQ9E/kY7gL
         IWiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MadAo0uG;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=STkn2ltutDdF3s5YjmV47aphI5P7iGsaBnl09q5dcwM=;
        b=diWNAq9nNRRR2V2LpL7H6qrhhRyGkhfuJvHTJ6AtisedrUWMqhLkb8pWA546Pf3KlA
         tXEG7+Q3vX+WR06ryLaUALvQXf/FEdkU/EW0+NmoMpmednXcrcxWqvomtNfwoCmE+k2v
         XXPldd6OrDhjFu0HfnZ4GYJmNuaE7Qqcsbc96Y2M9modvvmjvIzujUrGRqFX8ABIqhsY
         OoXq/3rLTd465jSDlC3Yj19RvAeEWPxi/hkDT2PNHZ+RTuDZA7YcsKIGFPMg9pACOPkB
         pp1dmzAchHETGJs1YipAcmq5O1Gck1K1RXAkR4EWjmObAlH0snP6wpEg8Pfb7XWeMFFU
         zqFA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=STkn2ltutDdF3s5YjmV47aphI5P7iGsaBnl09q5dcwM=;
        b=Hj60tqbW5OBMzPId+SLCQA0MgKodj4yvch6Emyopwqqb+bz8Z4EqnwL+gHftl5niOp
         zzxdFPJ0VqPQSICl9nP523f4OFQNtxIJRXq4ISt0KSD1PAEf+/ODaP+8l9uqwk08Dy1d
         49cesd0C+xrurOLkUpcna1HEmgaq5roTPw10B9J88JTd2cYcg2OzRF452JR+yRnq60a7
         dghOOJXRkvRk9q0JQvEKYljHCptvbi/bjdtlz6fcM6hvCWIyUQacNDg/aI16AsmtvQQE
         2yta1OcX6TWImBhm9LFRsvzbT6wN9YtXazJ/mPiuRneVMD6V0wL8kCY/m9q7MrBXSpL0
         fyGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=STkn2ltutDdF3s5YjmV47aphI5P7iGsaBnl09q5dcwM=;
        b=LrmFYqs+LVSrEp127XOfkk0Kq1PV3lnod8A4J+WvC1HvpJmfm+pXyKZY6NKmBORCU+
         uBnQ8uwuZJEJ+In/oewUtJndkhp+K9EACwZv/09l8KYDoeZMJaPp21gNGb4m9U3s82tZ
         Tna/bPKUD1/vVG95sgqSJUGsukjPYKh3uh9NQduXy1RKlkpzcL1r/3x5ueAVwMwcLcuF
         +Kvcnbfh1L/I6s1WymQIjrVbWCSGYD4B03zCfGPHyON0IetpI2HoAYXuC5Q0npt8frZA
         r127y5kPiN9zMZKiahZKms0WvJflJABrl0vxye6UehOMVkd72CFbZlPllFWTcLOwoxVp
         zFkg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaBuLyKwPQs66ynCV0VTHuIUMPVc8e/Ygo2342FNueKff5M5HH4
	sQ2v/O/GMvDtMG4MymX83S0=
X-Google-Smtp-Source: APiQypJgL0JLHmotJqQT+tfmo0F/7h3jL11JgCifgFTelga4SDM6ncUMkyiMtdo9oCxjnRHNyja4eA==
X-Received: by 2002:a25:ddc2:: with SMTP id u185mr25315777ybg.218.1586050788801;
        Sat, 04 Apr 2020 18:39:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:cc4f:: with SMTP id l76ls578458ybf.0.gmail; Sat, 04 Apr
 2020 18:39:48 -0700 (PDT)
X-Received: by 2002:a25:c206:: with SMTP id s6mr25986024ybf.101.1586050788463;
        Sat, 04 Apr 2020 18:39:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586050788; cv=none;
        d=google.com; s=arc-20160816;
        b=NvPs64V2n4UPC8588v4OuIlILBJ7uzTkN1IIHAC8V+QrV8IQqoMyqh74u4in9DVn3w
         DVS7tx2vjxlswlLOd3tDnjg5FfjSs9Iy1r/sVl1DUdLT3ZiF4f0vYIC8OdbUQ/hQtSDO
         gt6JyaLLVwta/V4cbc/BNeUusKI3vbnu3Bf14lTCBek5hfdcygapqHyMoHzLaRwgvlDF
         0nq0h2iaBNBfz1UwGRDJ2nvB0oZPNiuifjwBqWOD5BQpMQBx1tbfor6e6A0dhI7j+lzG
         2nfSCalf75BhAh2+yknUfFZMMRIz+kcwF55MjJtHTVmhEES5l9gLC2mkgeQcyBHUERha
         Lpjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=hKxSGX1KbNM2Zqe0YCiRfZZm/gAaCb+nxjYpt03wYi8=;
        b=ZEd9wFWj3DMZ5LuvEzhoaPggeAwcXr2TES2KIY7DCSooPG/Arh/NdC5FMMLg8y8U8M
         GXVQ1QLkduhIE75OS7Ev2op4DJlSKKNj90Iw8t3K2JAsbKkUPHEKW+w5hXTSIPkGuTLB
         E6YPbzfC61eC1GNX5UDG4NwyiPzk/YSMYCvfqPb2COoeOoFN1iBY+NS6r/QSA32Aa5Vx
         01JCpYgXqT/adJcNimwGXvUBP9ScmMpzzGPRv7ndZtM2MesQsjL2ooznLgpwhULOvkIh
         0pE+OYp8RNtj4tuJ5hTafIcufDm+Zmy0vLamWZ73oQStIoUuj+HV2igNDOapw8pl4et2
         kHuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MadAo0uG;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id l141si911175ybl.3.2020.04.04.18.39.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 Apr 2020 18:39:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id m2so11669673otr.1
        for <clang-built-linux@googlegroups.com>; Sat, 04 Apr 2020 18:39:48 -0700 (PDT)
X-Received: by 2002:a9d:128:: with SMTP id 37mr12039220otu.270.1586050787975;
        Sat, 04 Apr 2020 18:39:47 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 90sm3347057otc.29.2020.04.04.18.39.46
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 04 Apr 2020 18:39:47 -0700 (PDT)
Date: Sat, 4 Apr 2020 18:39:45 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Philip Li <philip.li@intel.com>
Cc: Jiaxun Yang <jiaxun.yang@flygoat.com>,
	Fangrui Song <maskray@google.com>, linux-mips@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Rui Ueyama <ruiu@google.com>,
	George Rimar <grimar@accesssoftek.com>,
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
	kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Peter Zijlstra <peterz@infradead.org>,
	kbuild test robot <lkp@intel.com>
Subject: Re: [peterz-queue:sched/urgent 4/5] ld.lld: error: section .text at
 0xFFFFFFFF80200000 of size 0x1E8915C exceeds available address space
Message-ID: <20200405013945.GA16484@ubuntu-m2-xlarge-x86>
References: <202004032329.oBqXCsfi%lkp@intel.com>
 <CAKwvOd=H71Q=r=S6Zr=N1zgkXTb9HyEwF78ZbuKkoigWZxiBDA@mail.gmail.com>
 <20200403192058.GA41585@ubuntu-m2-xlarge-x86>
 <20200404010210.GA13010@intel.com>
 <20200404013204.p53fteofnppvf7pe@google.com>
 <20200404211252.3540251a@flygoat-x1e>
 <20200404215916.GA929@ubuntu-m2-xlarge-x86>
 <20200405010005.GA18493@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200405010005.GA18493@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=MadAo0uG;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Transfer-Encoding: quoted-printable
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

On Sun, Apr 05, 2020 at 09:00:05AM +0800, Philip Li wrote:
> On Sat, Apr 04, 2020 at 02:59:16PM -0700, Nathan Chancellor wrote:
> > On Sat, Apr 04, 2020 at 09:15:31PM +0800, Jiaxun Yang wrote:
> > > On Fri, 3 Apr 2020 18:32:04 -0700
> > > Fangrui Song <maskray@google.com> wrote:
> > >=20
> > > >=20
> > > > Reproduce for a clang/lld developer:
> > > >=20
> > > > make -j$(nproc) ARCH=3Dmips CC=3Dclang CROSS_COMPILE=3Dmipsel-linux=
-gnu-
> > > > LD=3Dld.lld O=3D/tmp/out/mipsel distclean malta_defconfig vmlinux
> > > > (Requires mipsel-linux-gnu-as and clang in PATH)
> > > >=20
> > > > I have noticed multiple problems.
> > > >=20
> > > > % file .tmp_vmlinux.kallsyms1
> > > > .tmp_vmlinux.kallsyms1: ELF 32-bit LSB executable, MIPS, MIPS32 rel=
2
> > > > version 1 (SYSV), statically linked,
> > > > BuildID[sha1]=3Dff348ad92c80e525b3f14149e57e8987de66e041, not strip=
ped
> > > >=20
> > > > In arch/mips/kernel/vmlinux.lds.S, VMLINUX_LOAD_ADDRESS (from load-=
y)
> > > > is 0xffffffff8010000. GNU ld seems to allow 64-bit addresses when
> > > > linking an ELFCLASS32 file. The addresses will be truncated to
> > > > 32-bit. This behavior seems error-prone to me.
> > > >=20
> > > > lld does the right thing by erroring out. I do notice a display
> > > > problem of lld -Map and I have a patch to address that:
> > > > https://reviews.llvm.org/D77445
> > > >=20
> > > > For 32-bit linux-mips, the right approach seems to be make
> > > > VMLINUX_LOAD_ADDRESS fit into 32-bit. However, my Linux-fu and
> > > > MIPS-fu is not strong enough to do this :/
> > >=20
> > > Hi MaskRay,
> > >=20
> > > Could you please try this?
> > >=20
> > > --- a/arch/mips/mti-malta/Platform
> > > +++ b/arch/mips/mti-malta/Platform
> > > @@ -6,6 +6,10 @@ cflags-$(CONFIG_MIPS_MALTA)    +=3D
> > > -I$(srctree)/arch/mips/include/asm/mach-malta ifdef CONFIG_KVM_GUEST
> > >      load-$(CONFIG_MIPS_MALTA)  +=3D 0x0000000040100000
> > >  else
> > > +ifdef CONFIG_64BIT
> > >      load-$(CONFIG_MIPS_MALTA)  +=3D 0xffffffff80100000
> > > +else
> > > +    load-$(CONFIG_MIPS_MALTA)  +=3D 0x80100000
> > > +endif
> > >  endif
> > >  all-$(CONFIG_MIPS_MALTA)       :=3D $(COMPRESSION_FNAME).bin
> > >=20
> > > Thanks.
> > >=20
> > > --
> > > Jiaxun Yang
> >=20
> > Thank you, that fixes the error and I see no new ones. I tested
> > malta_defconfig, which boots in QEMU:
> >=20
> > Linux version 5.6.0-next-20200404-dirty (nathan@ubuntu-m2-xlarge-x86) (=
ClangBuiltLinux clang version 11.0.0 (git://github.com/llvm/llvm-project 1c=
e0bc39eebe95a350174eb0ed4e2508e7cb6ed8), LLD 11.0.0 (git://github.com/llvm/=
llvm-project 1ce0bc39eebe95a350174eb0ed4e2508e7cb6ed8)) #1 SMP Sat Apr 4 14=
:54:45 MST 2020
> >=20
> > Tested-by: Nathan Chancellor <natechancellor@gmail.com>
> Hi all, want to consult, does it mean 0-day ci doesn't need blacklist
> this ld.lld error anymore? This is a kernel problem and the error itself
> is valid.

The error is valid it seems but no commit should be blamed for causing
that error. In other words, it should be fine to un-blacklist it but
emails should not be sent to patch authors if that error is the only
error in the log.

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200405013945.GA16484%40ubuntu-m2-xlarge-x86.
