Return-Path: <clang-built-linux+bncBCIO53XE7YHBBAWMQ35AKGQEA5DYE3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id E506924EA39
	for <lists+clang-built-linux@lfdr.de>; Sun, 23 Aug 2020 01:10:59 +0200 (CEST)
Received: by mail-qv1-xf39.google.com with SMTP id f1sf3742061qvx.13
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 16:10:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598137858; cv=pass;
        d=google.com; s=arc-20160816;
        b=loRRyHeX1zRoO2E/BnKYQSWfwXxUbfTLgO6IDNXvQbdNASrGDt8x/b4kCS3bKqLL4l
         LbE3CtfdpB6G/BMC0U+EpNRwCvOWo/6MsA+Vj4OZPw1t8k+cJimrRjZiFPQCGezfaX0y
         a7ZW9Hhr5lUFZJ2wLQsdBN7j1Cw6suiSfRvmUnT43e5nVPLNQDLzhVROVCh4mJ2w4Zyf
         bx2WLg5i8wz4YRAaHftpP9Ivti4JJwJXp5EZ9MQNMttQ3ReZxVxedcHIgGHwlFaKYKq2
         KxKw+w5qAM1unPycnCZkzTtt5FbTuSJhBxV07buw3rsG45jmbiqyt/vV03k4Zwx+v6ug
         qyFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=xbsY9QRFWx03Ky6YOzkKN3/5Wu7fvvuDLuZRSyq1GLs=;
        b=GJasmHIedFlePFtZ2gRdHkzFKFzPfK74DvPN8PnMm7qzHwVXmvh6Dh9VqLMuSW9WKe
         pVcMDroa76Y2erR0xdsBHBd4yqKZoL5U4wFaTmi/8UUelmf3uhVrKW71ozdgEEpYXPBg
         13EAXv1Z5BbLcfv4lR+kKgbwtIRmF930yTnrOiV7h50pZNZtDtbMxSQsoxjSFH07l0wu
         nO2YxBkbd5QRzFXaoqnXQMWnCmgOTQipxKv5xBvy0WjvwGy4hsvBoGHBGKE41P4epxTU
         KsAF4rEXH9Is13vf017GgpTs9uaPZ7a0k5X8JXTsU5+IiqZY/B0FnunqMCJOuX0yfF10
         HxVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ht6E7a1e;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xbsY9QRFWx03Ky6YOzkKN3/5Wu7fvvuDLuZRSyq1GLs=;
        b=KhHu/yToEbuO6wmrXhPzI0cI1Td1DmPZ5LqYHv3tj3lW2skW5Y52IilxondBVrqlwk
         Cv+WAfNDrVsvS5iMY3UKjQ5NDI04NND+EX0jz9y8Oq1CinsqdRa5dFCPkOWHne38f708
         am8M62crQeyaXYc8vztx4nuhK/GaJuLH2dH24ZNHSlRuhkBsShW2ekytCXUBZTGrylrI
         tOVM1X9f/8qTtvNRe5BIKK6lQXjWGA2Y59cvCS5VwATcwDqurQzuq9ORlYXxbQs8Idb9
         kvFrUTGZdjjlWkQd5/xaXcENp+J5njJ1CqoVjwafDh+0vCgx9TvaugEoDufUaoLYNpHm
         cRuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xbsY9QRFWx03Ky6YOzkKN3/5Wu7fvvuDLuZRSyq1GLs=;
        b=amnvVZSnWMJpJPkDQx1Qctg/Z9NBBP3sokAAISCeVVisiext2cgI8oWLrgUfXDetvU
         DGGyp2KiI8OsahgHQF4vkvbgHQACgoN23nvqLF9wJ9UUGdZfNi9H4HCfSF39KUgUlpZR
         6TbvdtQoxgVIVJXVHAeuRK1AaH1Jq17HCf+EVwiUzWIVsT6ro1kaEd3kpmBdA+rPYNdt
         3ALfyEYFGXtbLH/02z3zVxuRQeCPnd8fqYE1F16aAYfB/cCyqw/PXyckZWZtFzmNUsjv
         gUbcPd+3ZZiUQh/5hhLocoqGOe0mUFp0cL8wjJutrydok56q+asNJypw1EW6g/AYCr5y
         YUCA==
X-Gm-Message-State: AOAM531Gx4dJyHjwpdR72HX18uTON5CDEFa+g5L7XI02rtaM3d2T/ddI
	vZCxgJnV1g+Q11fwgziHDe0=
X-Google-Smtp-Source: ABdhPJyPdaoLjIXUFrK195MvG1zOqDbcCNchbP5VeiEg8FVyyVbT8j00x9j3/Uvu7NYRU+zWDhtYaA==
X-Received: by 2002:aed:3e45:: with SMTP id m5mr8072121qtf.210.1598137858699;
        Sat, 22 Aug 2020 16:10:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4c12:: with SMTP id bz18ls1333043qvb.0.gmail; Sat, 22
 Aug 2020 16:10:58 -0700 (PDT)
X-Received: by 2002:a0c:f64a:: with SMTP id s10mr8161849qvm.196.1598137858229;
        Sat, 22 Aug 2020 16:10:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598137858; cv=none;
        d=google.com; s=arc-20160816;
        b=rvee9T5UjKpMpqcycEnP18nYbNOnXSpbvGLk83SAtBvfh1SJmPWvnA4tm0DcJq6nh0
         gvxc8QYfv0lU4mFpZmQDRezSfZpJTfqIlENthVm7N/DZKMaVR6ezPG7+NPTtRUUJXgKJ
         JMOPAaPDNX5qw+tv9L+YWf9q/FLI8DNVBg87cQwtUxbn5PxJKFB4UeC/YTJkKAcATpfd
         qeYEeqggtn6P/tT6/F9I4EbQekJxWgPIwXGh5YmEXHB3DHkU7ht4SchgEysjjIYwNqfH
         iVE7SrHusWV1UZTXC+Q4s75IzhE/1D4bvW99hp/O1wyaPBelR4/brlp5+cjwLvVgxzBv
         I+0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=WP9wSIBfD5wQcrpZkPoM0hMwoWbFysB2p8Lq1GzRYos=;
        b=vn0r68g8XMnyJvrmJAzWmPkavu9WB/F3CmVWhsnx2xJ6d69k5YPGZo0A1WYjlkd16w
         PBBNhL1zp4QTw/KM2R5yJcF4/EKicWJ0+Gfp2ekdRQHvW3oGj/+FRvMDUP99+A/sTIuU
         /apaX42Ca4mgxUa2cWCeN0YKDBglWx5HqggoNlVgPgjw1nPGnbDyuStE3Ha8WgmLr69h
         TzV91gFVXsXtHAsoErqRXijCjC5E7H5DHLLfgedTYDdQy4//DB3EK8DXPdkmlcjQvfAV
         K7aqrvnp1/nBRxAJxlg6DxwVQSgCKxgWxYVBqqRCtRlrgNq12ykRndf6Dbw9z62lggk3
         r0/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ht6E7a1e;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id d1si348153qtw.2.2020.08.22.16.10.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Aug 2020 16:10:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id i2so616461qtb.8
        for <clang-built-linux@googlegroups.com>; Sat, 22 Aug 2020 16:10:58 -0700 (PDT)
X-Received: by 2002:ac8:777a:: with SMTP id h26mr8246848qtu.141.1598137857602;
        Sat, 22 Aug 2020 16:10:57 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id z10sm6774896qtf.24.2020.08.22.16.10.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Aug 2020 16:10:57 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Sat, 22 Aug 2020 19:10:55 -0400
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Segher Boessenkool <segher@kernel.crashing.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
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
	Will Deacon <will@kernel.org>
Subject: Re: [PATCH] x86: work around clang IAS bug referencing __force_order
Message-ID: <20200822231055.GA1871205@rani.riverdale.lan>
References: <87zh6ohm03.fsf@nanos.tec.linutronix.de>
 <20200821230435.GA56974@rani.riverdale.lan>
 <CAKwvOdkoB+fT9tt7vgg1R6J-NEr77EWP5X8nFat_L-HvEzWGzA@mail.gmail.com>
 <87eenzqzmr.fsf@nanos.tec.linutronix.de>
 <20200822035552.GA104886@rani.riverdale.lan>
 <20200822084133.GL28786@gate.crashing.org>
 <CA+icZUVf9a8LC2Mf0cFymYQfALWs6bVfR1v1nRbxKaLAyU6NkQ@mail.gmail.com>
 <CA+icZUWGHo3mkN4=ZYeU37p8KJhxTXS5QKcAvq_HaqTHmFkw2g@mail.gmail.com>
 <CANiq72=3iOh5Z_rboZf-_GUpBE2LUUv3yPKOVNN_XmaNswdNSw@mail.gmail.com>
 <CAHk-=whaVW4FQjdwaicLFE4kiqr18rk6V50CuU-ziUPyRFjHrg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHk-=whaVW4FQjdwaicLFE4kiqr18rk6V50CuU-ziUPyRFjHrg@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ht6E7a1e;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::841
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

On Sat, Aug 22, 2020 at 02:08:27PM -0700, Linus Torvalds wrote:
> However, in this case, can we just leave that old "__force_order" hack
> alone, and to work around the clang thing, just make a dummy
> definition of it anyway.
> 
> Alternatively, just use the memory clobber. We use memory clobbers
> elsewhere in inline asms to make sure they are serialized, it's not
> normally a huge problem. Both clang and gcc should be smart enough to
> know that a memory clobber doesn't matter for things like local
> variables etc that might be on stack but have never had their address
> taken.
> 
> Or are there other cases than that particular __force_order thing that
> people now worry about?
> 
>              Linus

Actually, is a memory clobber required for correctness? Memory accesses
probably shouldn't be reordered across a CRn write. Is asm volatile
enough to stop that or do you need a memory clobber?

Replacing force_order with memory clobber introduces a few extra
instructions (testing with defconfig), but only in x86-64
hibernate/reboot/sleep code and early_ioremap_init on x86-32.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200822231055.GA1871205%40rani.riverdale.lan.
