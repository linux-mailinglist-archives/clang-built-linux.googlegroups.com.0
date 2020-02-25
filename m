Return-Path: <clang-built-linux+bncBCIO53XE7YHBBFU52XZAKGQEO3B5KUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C1F16EBA0
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 17:43:03 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id q13sf8160845otm.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 08:43:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582648982; cv=pass;
        d=google.com; s=arc-20160816;
        b=mMN8P5JjUNly3gkV0+rLe4VqYkMxrT2pl3uBgwErMiT2e2EoGZNSV4vXZIieK5hiny
         Xh8cMGGvnvu59YYtXqSmJmW4X+t5/JKOwx6hqaDF9eGPeeZ/PZAYtvqGaPH8UO9q5F1R
         y+1veph0tQN8sNMm+vtXuPkzuWfNRVU/xVeIbJsJRviuAF1pPen61+lag2C25msQ2b7U
         F5Ey5Ah4h2rTJjBz58vgaY7IWKliOpczx1YsiMLzr+5lBuOn9APx4eUjCPwTxlbBZRaU
         f6rd2QS2u1Jejesz48M93mFI0alvtJS45dfkxUnQINjzZpdvC2dYkC3bldfeR340wERu
         mO1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature;
        bh=QMnGGzYxDPc5aC7HTJHOfjvxdKOJTCelG492cP6KiJc=;
        b=kwnG5FqzOwCB64s8QVQ20syVtnCKfiajcciDVydkfFrFUtjk6NFaoC9mcaS8jtXxYh
         QmWLKF5mIIPrprgQie6RckXUR//PyGRHZIkIE/XAY3X5B8RUBvxXmV7mmBHk/KKC1ghA
         +PZgFbY3EUVXqWTmYomx15txBWNi0dmc0K9ulx9wZPW2m9evJosZwNgydu0LiFPFj2Q0
         QvJWIRnx93fGB9fwuSce5L27ptjRXT/lIwY6IrFNpmDUIyrMBiE+bpf5j0RodthhX8eM
         sWgB9maYIk6z3PEbaKY18wY8n52gtjb0j5j2zdmH3O8RgC9PRgreoelx/MQtbas2jInJ
         1qdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=p5ax+pu6;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f2e as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QMnGGzYxDPc5aC7HTJHOfjvxdKOJTCelG492cP6KiJc=;
        b=Pth7uBqdu8Sd++k3F9Vh+ABi2pxqLPpgq8HRm3JzdYyPQPRCcsb70vPBl2nY8OIDFu
         +TOVO+5glJdCgQtXIcaWTMuQdOZFDJ+A6rFS07FXKpMIoazE9+EADROI+iUUyNg1kZUU
         mBRYDmm79Y+evQk3lVby//oZpnsr8Zf3DrRSBt9ujouJkeznW5EuGSoLy5W4MsSggfUI
         LkLUesO7OCSeO5S5yV3EQIUPM2jxooLi9LEzyu6s93fNvZW4xV90PFWNekJWGQHPp4jE
         zvdVmu/OsugQ3uBOGQVgO2e5qSTsML07eR7KeeyuqE5cwNrElMp1NiJLy4tkcSsbzxx5
         f+sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QMnGGzYxDPc5aC7HTJHOfjvxdKOJTCelG492cP6KiJc=;
        b=La16B9MhAgSdJWvvMycK49s4TbwCYGMZ2ZyRTzxSlRuS6kp2NMnDbMQ94bS8h0W72S
         pMFjX4rOBvBRSZuysIxsJHTD/cKEd1m2yVWHRAwlpQGEKeeItcYgZ0S6e34qZ/QmRn0o
         G5aXXG4/Vi4GQ2biz1RLcur2EK1VZEWt6RXeblyemZlPHWP14BHnzVkgbbWD52HXnUui
         jdp5VlAIU0cOUqR+jvrGRTsFoN5rHb1wS9LMaOJ2icxc8n7I30mEITW/5NgvXwrfsC9i
         w2AsniYPa5DHTdVmtm3wuEDixCzY5mXC/G3icrO92Uo34B8qjwJ3FOc307M8mIIBbh4G
         qRHQ==
X-Gm-Message-State: APjAAAVl0F6weXe6lBIAYF4OZwxCHSblqLGBm55z6Bt2HmoBKlnKteQa
	U+culWwqfM3fRaSZCw/SSJc=
X-Google-Smtp-Source: APXvYqwbd9t3hAmP2Vqm0UfHZNphllft8hcxqCLVDPtO0EDpwwkHCyj+XJNgm8mYJpVVWRgZg8asBA==
X-Received: by 2002:a05:6830:1657:: with SMTP id h23mr2002941otr.299.1582648982372;
        Tue, 25 Feb 2020 08:43:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:534e:: with SMTP id h75ls4062507oib.9.gmail; Tue, 25 Feb
 2020 08:43:01 -0800 (PST)
X-Received: by 2002:aca:5d57:: with SMTP id r84mr4250695oib.42.1582648981893;
        Tue, 25 Feb 2020 08:43:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582648981; cv=none;
        d=google.com; s=arc-20160816;
        b=VgtML2ObtgAi73AClJ+gZ1xdbUnQ4fGSWXpSkyX9HA+/8AHFl74DCphf7dMKKXNzSo
         Z53hJcMy77UN0l7n3DUKr7BLrhuoV15Xs+SgdGMf9g/eSEjAYrrD2hBc1AYyV+AJ5HBB
         b+Yr0RnCES5DcWyIH0qSgPxXufTI9gRBH88Lot/kmU2hZnI5mZi/H9ecJ3voaXqxiuZS
         dtMeuosGYX2WJrOCF+A1yO2jvmPjePuopIllO3lzq8WSZkjCqM8oGSULUZa9EyTYVNUf
         VG/7D2NIcs5wIRhjZz8TarxT4KbsXvAzi70MfYcdEfBwu4PqfXMTOFCEHyYAirM5i4cw
         N/NA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:sender:dkim-signature;
        bh=xWi/9e1OaiwFM4i35gtevHs9CA+8xzjQ1Zdw1He22t8=;
        b=rmrhrx3zfI+p6KsKrvqfjbaHVvelnJ+Dtuf971HePhjrpnhKAzCDmWLgjvZTc7RecC
         br2f1SyJ7Le+ds/ix2yMTIvEluh9x7v9od7xWIEog9FQNxaJ3CDso+paBA6ZONq2gXtX
         kYOVc6Nq2gBVKEgXayaYNN5aVWmhVU1mQbV39/+wf9c/KJutijGBArIk5Hr/XXdtBgxS
         1Hh2pDLyd1r10Bip9d2Gl71dQdXEAaprTMMDAu75lq3A2WMRyV6rIEm6ZZJK3BlvT61Y
         XyG86e4mvxzSUtdOVPu+b195TyN4yV3B3leqFtHphgK7jHXLEM+hxUEkJ/Jk1JqTGmNZ
         8ZQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=p5ax+pu6;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f2e as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-xf2e.google.com (mail-qv1-xf2e.google.com. [2607:f8b0:4864:20::f2e])
        by gmr-mx.google.com with ESMTPS id t18si948066otq.5.2020.02.25.08.43.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2020 08:43:01 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f2e as permitted sender) client-ip=2607:f8b0:4864:20::f2e;
Received: by mail-qv1-xf2e.google.com with SMTP id ek2so5996607qvb.0
        for <clang-built-linux@googlegroups.com>; Tue, 25 Feb 2020 08:43:01 -0800 (PST)
X-Received: by 2002:ad4:496f:: with SMTP id p15mr48863886qvy.191.1582648981318;
        Tue, 25 Feb 2020 08:43:01 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id n5sm2391799qkk.121.2020.02.25.08.43.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2020 08:43:01 -0800 (PST)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 25 Feb 2020 11:42:59 -0500
To: Kees Cook <keescook@chromium.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Fangrui Song <maskray@google.com>, Borislav Petkov <bp@alien8.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Michael Matz <matz@suse.de>
Subject: Re: --orphan-handling=warn
Message-ID: <20200225164259.GA1029742@rani.riverdale.lan>
References: <20200109150218.16544-1-nivedita@alum.mit.edu>
 <20200109150218.16544-2-nivedita@alum.mit.edu>
 <20200222050845.GA19912@ubuntu-m2-xlarge-x86>
 <20200222065521.GA11284@zn.tnic>
 <20200222070218.GA27571@ubuntu-m2-xlarge-x86>
 <20200222072144.asqaxlv364s6ezbv@google.com>
 <20200222074254.GB11284@zn.tnic>
 <20200222162225.GA3326744@rani.riverdale.lan>
 <CAKwvOdnvMS21s9gLp5nUpDAOu=c7-iWYuKTeFUq+PMhsJOKUgw@mail.gmail.com>
 <202002242122.AA4D1B8@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202002242122.AA4D1B8@keescook>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=p5ax+pu6;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f2e
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

On Mon, Feb 24, 2020 at 09:35:04PM -0800, Kees Cook wrote:
> On Sat, Feb 22, 2020 at 03:20:39PM -0800, Nick Desaulniers wrote:
> > Kees is working on a series to just be explicit about what sections
> > are ordered where, and what's discarded, which should better handle
> > incompatibilities between linkers in regards to orphan section
> > placement and "what does `*` mean."  Kees, that series can't come soon
> 
> So, with my series[1] applied, ld.bfd builds clean. With ld.lld, I get a
> TON of warnings, such as:
> 
> (.bss.rel.ro) is being placed in '.bss.rel.ro'
> (.iplt) is being placed in '.iplt'
> (.plt) is being placed in '.plt'
> (.rela.altinstr_aux) is being placed in '.rela.altinstr_aux'
> (.rela.altinstr_replacement) is being placed in
> '.rela.altinstr_replacement'
> (.rela.altinstructions) is being placed in '.rela.altinstructions'
> (.rela.apicdrivers) is being placed in '.rela.apicdrivers'
> (.rela__bug_table) is being placed in '.rela__bug_table'
> (.rela.con_initcall.init) is being placed in '.rela.init.data'
> (.rela.cpuidle.text) is being placed in '.rela.text'
> (.rela.data..cacheline_aligned) is being placed in '.rela.data'
> (.rela.data) is being placed in '.rela.data'
> (.rela.data..percpu) is being placed in '.rela.data..percpu'
> (.rela.data..percpu..page_aligned) is being placed in '.rela.data..percpu'
> ...
> 
> But as you can see in the /DISCARD/, these (and all the others), should
> be getting caught:
> 
>         /DISCARD/ : {
>                 *(.eh_frame)
> +               *(.rela.*) *(.rela_*)
> +               *(.rel.*) *(.rel_*)
> +               *(.got) *(.got.*)
> +               *(.igot.*) *(.iplt)
>         }
> 
> I don't understand what's happening here. I haven't minimized this case
> nor opened an lld bug yet.
> 

At least for the relocation sections, they cannot actually be discarded
because we build vmlinux with --emit-relocs (at least for x86).

However, attempting to collect them via for eg
	.rela.all : { *(.rela.*) }
while using --emit-relocs works for neither ld.bfd nor ld.lld, just like
discarding doesn't work. The original .rela.<section_name> sections are
always output. ld.bfd doesn't warn, but ld.lld warns that these are all
orphan sections. I think these warnings would have to be suppressed to
make --orphan-handling=warn useful with --emit-relocs.

It seems like lld needs even .symtab, .strtab and .shstrtab (and
.symtab_shndx -- not sure what this is as it doesn't actually appear in
output) to be explicitly in the linker script to avoid warning about
them. Maybe these should be suppressed as well?

For .plt I think you just forgot to discard it. I didn't actually get a
warning for iplt, and the one for plt goes away if you do add it to
discards.

Not sure why there's a .bss.rel.ro section in the first place -- surely
the bss can't have any relocations? But that can be removed via discard
as well at least.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200225164259.GA1029742%40rani.riverdale.lan.
