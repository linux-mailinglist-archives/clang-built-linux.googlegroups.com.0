Return-Path: <clang-built-linux+bncBCIO53XE7YHBBVFPQH5AKGQE5AWQ7NY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 906C324E3DE
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 01:25:09 +0200 (CEST)
Received: by mail-ua1-x93d.google.com with SMTP id h13sf390882uab.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 16:25:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598052308; cv=pass;
        d=google.com; s=arc-20160816;
        b=IBWXwWEV2lfIljLoTsWHXLPsVdjPrYHth65WaCMLr525hh5enwfawA58viMWAUuHob
         ZER7WyT9T03mIUFTooMCK99Fz3jY15c7qxwGKNsM6efC54N4DDIxMiDea81EUXa9UcXJ
         nj/w4Fi1yYtoSsgh3YpPl0zxcIxOJEX1W9sV87DCIsZioAHGFkSrnlcSd2AyGyw+/q3l
         7D9xAV6l+HAVCNBVOuwZEyVTASL6ilYT6Wcc1fSWSPsbwqMv2Yk53MYZsHqCXpkUHV+b
         M0n4E8Xk9lT5V13Ealekl0mzeBvh9dR1HpTG0Vm8H16c1yctgbE1vyLx5bSdV2TOG4p5
         dcmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=zhiGGQ80ucJLaV44xnO/gs6RU/FOFcI1J988dQm9b7M=;
        b=DEUPxLgZTZq4LyAy+M3MCom3hLhOkvDE4nBiCULVQ3tCItIyFfCBBmvdvbFbXLYECV
         DIjTUrK/d0zSipwWZIpAlSwHOEHi+VzxaJ0UKCWEuDCXdrJR7HDeKLPxQF24MDpdgjdB
         2w3Zt7l4tJ2Mpyiqg+B+0nAUv0LBc0au4rQ3V7sML3GuJH+IEKSn2sTK5t5+o2FUBwKS
         FZgSra5+mk/UCPYETS+x78YUbRmNDYEGOTGljySk4PhAP1j5jg+ue69eWBRCa3HXYqkr
         lqmMGIdt1rBq5wW0aZyqzGCEYuoHBMpXWDMc7dX04o647E3m7kgxk8bHceB1VCNGpwg8
         AvBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ntUqPrmj;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zhiGGQ80ucJLaV44xnO/gs6RU/FOFcI1J988dQm9b7M=;
        b=jOSYmtxHPKgXeomTshPMbU/k6HWB2Q7+cwwb+3ZlV5078OavmgkdGS5WkrPVl/VG+Q
         n7UzBJopzZEmcEcarvZdbihZR99nfqiYdU2am5Fy6PgAPFJsojcNK9QAgWXNZGHFUKGH
         eRoxchIhmZH5Q3UnL3s0huk0ILbt8MxpO6JBO8N0IZXp4jVNX3iIj0f+fsw1wvhlBUSq
         yf7NnbrjLsrRrPV46UGVraerwKKEA7+FsN6OOFttPE+e3AcyyQmy/lZ1XiPczs/Gemx/
         wESxhgdCMBOrMCtFfLfycab/kBJRGhSwtl3e9TwrUTiI+WsjC7FymVm2o6XcA9JhlLYS
         HsJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zhiGGQ80ucJLaV44xnO/gs6RU/FOFcI1J988dQm9b7M=;
        b=puRfDO5CPRRiBBp5Bqg3HH+FsIIMQYrSp7YABE2lt1N5Zin3qNJfbUAUJNnqqe8Ls8
         uIHXKQKJH0uzIdND+RoI4xizA6Zmyi0XGUCNp7Gfnoluwa7iOAf9P6BjL85JeyIzuq8o
         lJDZyC53/CXTDQgFeIiE9f2OW5LvK1w7P+HgYxEVj7yPfhgkHlNTxzHpwe4sSMpBHWhC
         wFT662LWAxADHQ0iBOLM48DAafka7leEXyl06zFVIUpsQ86v6XuliA2IhOHlpFh/Sqnk
         LfLSSbyvD8kTgxpgWP+6RqqUs76em7zEMcVI9ClnCmoOgxRNntsC2XF8HLXKtBZflV+L
         eJUw==
X-Gm-Message-State: AOAM5319LuJLz+gxSWaifeCeuLyIF2DZNjviPNAYRXsGIPnO11DZ5W7S
	6wBjDLvmSOvt8QwD7cziwmg=
X-Google-Smtp-Source: ABdhPJyORwb2imrcOc37uDexHYY12bbWamKns//JkjV8IsPlnFBs9kBClMF1bJnJCGAms+9dlWzKLw==
X-Received: by 2002:a67:2ac2:: with SMTP id q185mr3427786vsq.33.1598052308662;
        Fri, 21 Aug 2020 16:25:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c416:: with SMTP id c22ls459300vsk.4.gmail; Fri, 21 Aug
 2020 16:25:08 -0700 (PDT)
X-Received: by 2002:a05:6102:c7:: with SMTP id u7mr3600434vsp.195.1598052308213;
        Fri, 21 Aug 2020 16:25:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598052308; cv=none;
        d=google.com; s=arc-20160816;
        b=KjFRaDktl6p+VxBJW8dmqh8VKG3+PzYTBbQLBvpQl2+apv1FJtt1fuhUYszr1OviFt
         Gpnc/huXRC57bipcmlf01kq8Dg2+9Dyf9KymUoHi6ADX/ojhBQrYbTYyDVWXHgzlbB6z
         XeGmubMuVlbFbEgrigE0aEqGr/H50R983inSN8eCpbfK1mw8GzHzthtCRes3V5sVx8qP
         9EyOIZSbScg++hZbDhK5J2jq/H7PBvV5Evxn6g4RmMkXJ0icFNlTeLJkqHm/M+sJZ5bE
         nA2ez8mC3zpj6GMltHL8ZJMnVi9zuUH1/nzxRroA6XC8II+dv51xDZG9yjkawyfEI6xl
         MA2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=tPcAOUQXeRo09D74FlY+tpPy6QiUk0I9B9RENqrqcW0=;
        b=JAxkpHjlxcuBuvH0ALo9NPVwiVkjIYcMXldIZAmbydY/cm0k40bsLF4nb/UNX6D6FM
         89tHNcXiccdiKNb83Js11cja6TnzjlZGASpkyYZvx5b0OHpGyveSdemF7b49ZVIqnuJs
         hxmk5luA41LggMDhFZLZNGyRvbPyvU7Hq3FI3ytBa/Cv4MoFTY/1sXUqjsC7Fh+wAu5X
         EYKB25dYB1aNboBBRtajtx1UAACcotfoK8VlaINwte0nULbcAlUg/umHKH2ww8vh52NE
         0CqqxddCSKSA7nettdqxFZyXcOqeTa+3xgbUz8RvGgUSJp52Q3e1eMBk496KQ7uuwg+a
         4vCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ntUqPrmj;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-xf44.google.com (mail-qv1-xf44.google.com. [2607:f8b0:4864:20::f44])
        by gmr-mx.google.com with ESMTPS id j18si210031vki.3.2020.08.21.16.25.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 16:25:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) client-ip=2607:f8b0:4864:20::f44;
Received: by mail-qv1-xf44.google.com with SMTP id o2so1380721qvk.6
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 16:25:08 -0700 (PDT)
X-Received: by 2002:a0c:ec01:: with SMTP id y1mr4495531qvo.167.1598052307897;
        Fri, 21 Aug 2020 16:25:07 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id h55sm3767475qte.16.2020.08.21.16.25.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 16:25:07 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Fri, 21 Aug 2020 19:25:05 -0400
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
	Borislav Petkov <bp@alien8.de>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
	Zhenzhong Duan <zhenzhong.duan@oracle.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Juergen Gross <jgross@suse.com>, Andy Lutomirski <luto@kernel.org>,
	Andrew Cooper <andrew.cooper3@citrix.com>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Will Deacon <will@kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH] x86: work around clang IAS bug referencing __force_order
Message-ID: <20200821232505.GA66405@rani.riverdale.lan>
References: <878serh1b9.fsf@nanos.tec.linutronix.de>
 <CAKwvOdnOh3H3ga2qpTktywvcgfXW5QJaB7r4XMhigmDzLhDNeA@mail.gmail.com>
 <87h7t6tpye.fsf@nanos.tec.linutronix.de>
 <20200813173701.GC4295@paulmck-ThinkPad-P72>
 <20200813180933.GA532283@rani.riverdale.lan>
 <875z9dioll.fsf@nanos.tec.linutronix.de>
 <20200820130641.GA536306@rani.riverdale.lan>
 <87zh6ohm03.fsf@nanos.tec.linutronix.de>
 <20200821230435.GA56974@rani.riverdale.lan>
 <CAKwvOdkoB+fT9tt7vgg1R6J-NEr77EWP5X8nFat_L-HvEzWGzA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkoB+fT9tt7vgg1R6J-NEr77EWP5X8nFat_L-HvEzWGzA@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ntUqPrmj;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f44
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

On Fri, Aug 21, 2020 at 04:16:56PM -0700, Nick Desaulniers wrote:
> On Fri, Aug 21, 2020 at 4:04 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > On Fri, Aug 21, 2020 at 02:37:48AM +0200, Thomas Gleixner wrote:
> > > On Thu, Aug 20 2020 at 09:06, Arvind Sankar wrote:
> > > > I don't think that's an issue, or at least, not one where force_order
> > > > helps.
> > > >
> > > > If the source for foo() is not visible to the compiler, the only reason
> > > > force_order prevents the reordering is because foo() might have
> > > > references to it, but equally foo() might have volatile asm, so the
> > > > reordering isn't possible anyway.
> > > >
> > > > If the source is visible, force_order won't prevent any reordering
> > > > except across references to force_order, but the only references are
> > > > from the volatile asm's which already prevent reordering.
> > > >
> > > > I think force_order can only help with buggy compilers, and for those it
> > > > should really have been an input-output operand -- it wouldn't currently
> > > > do anything to prevent cr writes from being reordered.
> 
> I agree 100%.  From the link to GCC docs, the code in question doesn't
> even follow the pattern from the doc from informing the compiler of
> any dependency, it just looks like !@#$.
> 
> > >
> > > Fair enough. Care to provide a patch which has the collected wisdom of
> > > this thread in the changelog?
> > >
> > > Thanks,
> > >
> > >         tglx
> >
> > The gcc bug I linked to earlier is only fixed in gcc-6 onwards. Is that
> 
> (based on https://gcc.gnu.org/bugzilla/show_bug.cgi?id=82602#c14)

I actually checked gcc's git repo too. The fix is not there in gcc-4.9
and gcc-5.

> 
> > good enough to remove force_order? I can test gcc-4.9 and gcc-5 to check
> > if it would currently have any impact.
> 
> I think checking the disassemblies with a pre-gcc-6 would be good
> enough then; that bug isn't specific to this particular case.
> 
> > CBL guys, can you confirm that clang also will not reorder volatile asm?
> 
> Full disassemblies of vmlinux pre vs post __force_order removal are
> the same.  That's pretty good actually; I was worried for a code base
> of this size whether two compiles would produce the exact same
> disassemblies; I know the version strings are timestamped, for
> instance, but I didn't compare data, just .text.  I should triple
> check i386, and some of the ko's that use modified functions.  I'd be
> happy to help provide a tested by tag for numerous configurations with
> Clang.
> 
> Attaching the diff I was testing, feel free to add a commit message.
> --
> Thanks,
> ~Nick Desaulniers

Thanks, will write it up over the weekend.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821232505.GA66405%40rani.riverdale.lan.
