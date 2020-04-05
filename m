Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBN63UT2AKGQE7ISB3QY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FCF719E827
	for <lists+clang-built-linux@lfdr.de>; Sun,  5 Apr 2020 03:00:41 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id m9sf8555098plt.8
        for <lists+clang-built-linux@lfdr.de>; Sat, 04 Apr 2020 18:00:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586048440; cv=pass;
        d=google.com; s=arc-20160816;
        b=wdZ2zmL0t9Oj14BU8EvDzvwsS62W3DvXNGm/4guLRYL/HfwXpky0DBJEY4eascr8WW
         7Nqcr7UK3TkT97AhEJmqmUc1MQ+iixCiVCO9bLTvCq+o62im2wqyGKiaieNG6liRMZA/
         x0Ih/RNl9+frQIY/slowAhjVMGWR9kIvxooD6RDU3OUYVo01UrJlwXP+gpKaCuq7ESx/
         ASQzM0L+Kt3RCNavrjKRc+csZ0YF8EqXiT1A1P8KHOF6+U9d3qhMxySe5jKsxMKuPaTC
         zrVY1lOuIjKR3f1DxxRDgRlshET/Nkl+tlVB+Stw1JvwROx8Dd4/G+mByp9V6kMgK8hJ
         u77w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr:sender
         :dkim-signature;
        bh=TwHUR50a2HePehM4KVQ0GJmb3VCc+ZRNni8q3Ry0T9s=;
        b=FprGjE99OcQ4PskKWLbDfXW7conhbQgEavaBMgOQFoAthStzPPVVhPA/bS60Aa1PZ9
         n0DJbjrZXplLBfgBbKboxG6FeuzEgZ0c+wH9icXE4q59He8T3YVLGIWx7Q7jefI8itHD
         JKV2PctxsjqgaNXTf9lhipltGV9I6CxdPIbRzVzibRa0KECbbDCHfeYddpIsk761vxEP
         5FEBfJ1mxGXyXYsoCEFq/fbvKchm3LNjXFYUJNdnihJ4CKdf7gB81xbSuE+8csJwVRe7
         S3YefISa45IZMABbRgtJM00c9zSlRxaJotOywC87XQmYrMymZIA87talgnu7416BBElQ
         jlCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TwHUR50a2HePehM4KVQ0GJmb3VCc+ZRNni8q3Ry0T9s=;
        b=XwyvoRYbL3CsKE0moBKrcksD9hAUlx4cwBmeAugwKng0EhqiUra/44zNS/Da+JC6X7
         2sEaoB+3Dx0EdmVq7/9fNdg+GaMeGWa7bYJ+8qvyQ6dXtLQPffJmioB3Alb1rngyx5z+
         BPAzq4/+hjo13j208/lfbYFTT+Ku5Cg+VR6lIjgxMI18/anormzQsjkcmT6uaRsPJ56k
         tmV2Xt+vU6kb5BiiTchnJNzM1D2tpx0AG7FhKpjmsmtlrf6A7wF9nuWKn+PCJpJWi6ra
         AMbxRmqM5V8lrB6+Xu528aISn3GtK/9a6OL+i1mBpKgK7+ngcLvpqtV3xB4izkQYcnkX
         J/6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TwHUR50a2HePehM4KVQ0GJmb3VCc+ZRNni8q3Ry0T9s=;
        b=KO8NZOAmrEezs1VmOZuTuOnFwLrLn2JahuSHl2crttVuDI0VxcEZ7atOkX6q0zBHqr
         zkCVSHm4YoAW8ka2PZK7Zvfdim4yzCeBiFNij14HoDaKTuvQSH3iul0Q36Twm6CWDCVB
         FvhZL8nmWmf/F2aqehms2YOyJoVtPY/fzwGB15tO38lTmZyUh3DtXw84lFwfPuaumjPJ
         e/9nH9l9VKvwQATkCp0cxqLBUC5VG4y+EhgzblfC6PLmXPtHmHZR3KhK8Z06+XxWkR5F
         Qfud4mHRZJgC1N2IP3t+GqyWzNi+Yf2FmN96oEnmSe7WzUYeyBMp+MIr7CVOqUNssd+f
         xcWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaULfnpyG6D7KckzgBW8HZVKB0egXr1KCv7AjDLysdUmve3NjgU
	rh2KXmFAlaWz4ABP/Q0ASio=
X-Google-Smtp-Source: APiQypLi5KFUXIrP6+yNpocWbTAd0InfQC9FNgq0dRiZ+YtOeiQWAGZ2h6fP9+qHK3w9w/cKw/Lj4g==
X-Received: by 2002:a63:58e:: with SMTP id 136mr14980007pgf.311.1586048439623;
        Sat, 04 Apr 2020 18:00:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:9e2:: with SMTP id 89ls10569169pjo.2.canary-gmail;
 Sat, 04 Apr 2020 18:00:39 -0700 (PDT)
X-Received: by 2002:a17:90a:cc14:: with SMTP id b20mr19266911pju.75.1586048439094;
        Sat, 04 Apr 2020 18:00:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586048439; cv=none;
        d=google.com; s=arc-20160816;
        b=yCu5X6D/nmvY/lIpO9U7J4ecNoduYcQD2LKor5h0JUfGG1qVaW/O3WKtmFtAYus69H
         tJJDPHUiF4T9UX43POZgZjbqqcSO/8T7Zry40RZlqqpaAt54QBAvKr8q3Y48r/YKGxD+
         Ebj+VyXyQj2aJKqq1EzmGCavA+ZbX1JGO/oQfNl15qMpfWfsAQ0MAKGGQlzwypXakFXd
         uPwvkWIHbpU0a7TcRkEvY/PqeZmuusAsVp8mr+5rUN/2qFMYLVY9HrvwKp61r2Luf4VX
         1sl124mYGBJutlo8m8iGSQW4OAzlz4BDYIgWTdMdBrRCtq8OH91Y2He4M4IuWQZ3M8f6
         D9wA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=G8dqOQjiBknE9kgzM0HmI/zppsUfQmxgu6fvgD86oLg=;
        b=XLqrV4LQriZUi6SrfGfHFCvImBBXTSJOg9k44JVFkJoO2XiIbqmOjvST5SXb7l2jTR
         WhbGgbD9gi0MxTn/8qgxUW/d/N1QAixnhf68ZTGwYVUo41rv9iH7T0gxgG3Wbadjk9Z+
         D/v5ANkjWp88ONDFYHV7XUcZFO0Ixc3cayNipCFy+w/ZxE5ten++c5Pq8rDWGavGIERU
         EXsGufPWpblYsiYcl+o3CoPrf9JrSYT9XRHaRx/MUC1tpEd49SlFAR66IGBB/deYFeGS
         8UlJu6h+uL/sPSLdlaArWxyWe+qF8vTO9ZxJvsX9t8OsQio/0Ak9HCG2fnalO1NV3iAD
         a6bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id s63si804461pjb.0.2020.04.04.18.00.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Apr 2020 18:00:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: 9ffd17ueDSJm0twIW8Httd969DaLcXTOKjcqODxZIvOcsAmP+Y7Wa5ngDw/8Sc9gQ2HqA9297p
 CV+0xRY1jIUQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Apr 2020 18:00:38 -0700
IronPort-SDR: KTdevKEGBgLUFVjLvH6eBiaL7Ro9iATH9nQ7Lr7gzr7z7F9rmo4wcPY/VJWYBKtqOm8TqlT0+E
 GUqdwWK+blyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,345,1580803200"; 
   d="scan'208";a="239252078"
Received: from unknown (HELO intel.com) ([10.239.159.39])
  by orsmga007.jf.intel.com with ESMTP; 04 Apr 2020 18:00:35 -0700
Date: Sun, 5 Apr 2020 09:00:05 +0800
From: Philip Li <philip.li@intel.com>
To: Nathan Chancellor <natechancellor@gmail.com>
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
Message-ID: <20200405010005.GA18493@intel.com>
References: <202004032329.oBqXCsfi%lkp@intel.com>
 <CAKwvOd=H71Q=r=S6Zr=N1zgkXTb9HyEwF78ZbuKkoigWZxiBDA@mail.gmail.com>
 <20200403192058.GA41585@ubuntu-m2-xlarge-x86>
 <20200404010210.GA13010@intel.com>
 <20200404013204.p53fteofnppvf7pe@google.com>
 <20200404211252.3540251a@flygoat-x1e>
 <20200404215916.GA929@ubuntu-m2-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200404215916.GA929@ubuntu-m2-xlarge-x86>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.65 as
 permitted sender) smtp.mailfrom=philip.li@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

On Sat, Apr 04, 2020 at 02:59:16PM -0700, Nathan Chancellor wrote:
> On Sat, Apr 04, 2020 at 09:15:31PM +0800, Jiaxun Yang wrote:
> > On Fri, 3 Apr 2020 18:32:04 -0700
> > Fangrui Song <maskray@google.com> wrote:
> >=20
> > >=20
> > > Reproduce for a clang/lld developer:
> > >=20
> > > make -j$(nproc) ARCH=3Dmips CC=3Dclang CROSS_COMPILE=3Dmipsel-linux-g=
nu-
> > > LD=3Dld.lld O=3D/tmp/out/mipsel distclean malta_defconfig vmlinux
> > > (Requires mipsel-linux-gnu-as and clang in PATH)
> > >=20
> > > I have noticed multiple problems.
> > >=20
> > > % file .tmp_vmlinux.kallsyms1
> > > .tmp_vmlinux.kallsyms1: ELF 32-bit LSB executable, MIPS, MIPS32 rel2
> > > version 1 (SYSV), statically linked,
> > > BuildID[sha1]=3Dff348ad92c80e525b3f14149e57e8987de66e041, not strippe=
d
> > >=20
> > > In arch/mips/kernel/vmlinux.lds.S, VMLINUX_LOAD_ADDRESS (from load-y)
> > > is 0xffffffff8010000. GNU ld seems to allow 64-bit addresses when
> > > linking an ELFCLASS32 file. The addresses will be truncated to
> > > 32-bit. This behavior seems error-prone to me.
> > >=20
> > > lld does the right thing by erroring out. I do notice a display
> > > problem of lld -Map and I have a patch to address that:
> > > https://reviews.llvm.org/D77445
> > >=20
> > > For 32-bit linux-mips, the right approach seems to be make
> > > VMLINUX_LOAD_ADDRESS fit into 32-bit. However, my Linux-fu and
> > > MIPS-fu is not strong enough to do this :/
> >=20
> > Hi MaskRay,
> >=20
> > Could you please try this?
> >=20
> > --- a/arch/mips/mti-malta/Platform
> > +++ b/arch/mips/mti-malta/Platform
> > @@ -6,6 +6,10 @@ cflags-$(CONFIG_MIPS_MALTA)    +=3D
> > -I$(srctree)/arch/mips/include/asm/mach-malta ifdef CONFIG_KVM_GUEST
> >      load-$(CONFIG_MIPS_MALTA)  +=3D 0x0000000040100000
> >  else
> > +ifdef CONFIG_64BIT
> >      load-$(CONFIG_MIPS_MALTA)  +=3D 0xffffffff80100000
> > +else
> > +    load-$(CONFIG_MIPS_MALTA)  +=3D 0x80100000
> > +endif
> >  endif
> >  all-$(CONFIG_MIPS_MALTA)       :=3D $(COMPRESSION_FNAME).bin
> >=20
> > Thanks.
> >=20
> > --
> > Jiaxun Yang
>=20
> Thank you, that fixes the error and I see no new ones. I tested
> malta_defconfig, which boots in QEMU:
>=20
> Linux version 5.6.0-next-20200404-dirty (nathan@ubuntu-m2-xlarge-x86) (Cl=
angBuiltLinux clang version 11.0.0 (git://github.com/llvm/llvm-project 1ce0=
bc39eebe95a350174eb0ed4e2508e7cb6ed8), LLD 11.0.0 (git://github.com/llvm/ll=
vm-project 1ce0bc39eebe95a350174eb0ed4e2508e7cb6ed8)) #1 SMP Sat Apr 4 14:5=
4:45 MST 2020
>=20
> Tested-by: Nathan Chancellor <natechancellor@gmail.com>
Hi all, want to consult, does it mean 0-day ci doesn't need blacklist
this ld.lld error anymore? This is a kernel problem and the error itself
is valid.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200405010005.GA18493%40intel.com.
