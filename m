Return-Path: <clang-built-linux+bncBDVZNA4ESQGBBCE7Z7ZAKGQEQDKDMRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A59F16A74A
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 14:28:41 +0100 (CET)
Received: by mail-lj1-x238.google.com with SMTP id j1sf1576597lja.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 05:28:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582550920; cv=pass;
        d=google.com; s=arc-20160816;
        b=jGBOqusJ0auYDuckAhPgPc/8jOTE8zHyYw2FqkPvxH2Uq6Byy4/Ow5HKtRtmEKm4Z8
         toAS39/9SRygjTM2R8urW6vFkw/+MUgqDzETh6KkGJaMr2lzoXzElFVyjkGUEZExPf6L
         U9c6q/OsZeLY9XqliNYeL+aCHgLsNZBJiEoCgZg0Aypahsfp3nOkpmypmRXnANmS9SfU
         dmKu/p9CHV7p/wQoOhycjsoaBBrNDM6YyBdVL1QQ6vntzvlZNIXlsJtD4ooF8s9y2DIn
         6udY/feYexAjTqbS8xthHgNdMgOzlcHCgvjdE8aw1bk6yyiJYS3QGqDkH/3iLfa5I3Bb
         idMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=dkZSG54vxGyUvusXZQqSdL9eAiGpzwIBh8v8MD3RnPA=;
        b=FR1RcTW2p0Qx4Vb0u8D8ZxtCoK5yxglSBuSxzaCDq5s/SfzdHyGG9F5S9jYq9Khe1S
         Aem3PQ/lfvujEXBsuB/kGr8hN9xbKmh6+SUCznaTbL5Dv5Nkq9sOCVW+/EJIaxqd9hR2
         sEY3gxo+LRSiivMhBPv5t+fN6aVuYd0fBngpesyluH0LyUwbxYVTmIgc7ItF6dyuxf+P
         IJPLT8xPj20KLqKUc5mLA2EW3UApstV3qvdJugfSmM7KiigwGyMBR9O80VgkMByKJL7k
         Sl5Q5vfIBDBcCOULXgN+azcmi5DFoVYr+2OmPJjZA+2atoWv8Zw21sjIFme3/+C/jSGg
         DQPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of matz@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=matz@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dkZSG54vxGyUvusXZQqSdL9eAiGpzwIBh8v8MD3RnPA=;
        b=rN3Cz7eaxGr+DOVlGPtt/SWQUO/7o1iGceqPzzaIpYQ+dOWOSkkQ18bBzs8yASpYPA
         +K1Fb+XxaFH+QQJC1+SowKBBmMubE45fbhILMrqjxiHecgcZLwq+BspZqGXFJffv13q3
         3bqP0EIALDss4TcZArs4Ukq6Gk8uVfJDfG8/v4yYr0oCF3GLZClWlJo6roFMR5uhYVGO
         1PQg6Vg+dC/8fxJ1r5SYoh65K248ojSuXUfcLViCi6d6FwYI3w+UkeHAjKjnMFsewKZQ
         JfF9spiBEAOUNW1k9taAQ9Z1Z+3pStbmnAFHqpr0ovvrvqzyGFuu+tUP59Jgx7MVB6Zv
         nHyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dkZSG54vxGyUvusXZQqSdL9eAiGpzwIBh8v8MD3RnPA=;
        b=YAwNLBG677wOWSDRpcL0lXIgsSJ1cyahJ/Rce6VC8noh18wWAxttGIvc6fc+eMmVR2
         0a2iwWRL5x58uEstTT8ejjvCCjJSFPoIhO0iXFN/hjx0G2sTpnclLN0qL6kzRwGu2c5v
         zm+BCbqiGJQ1CySMJU3wH6Lajsc5Zt07caHeD7RBD+DpRnEf7bDrT6XzAqxL6oLW6Dm1
         CJjQyv2bRoMC1T+8GTDuBuhQAmlx8A+1531qEEGjmrYxBFbPRe46TXbGXu2vpeTIBGIC
         h1DsAKj58Qz5Z9xxE9FtO4jqwQqUnzOeDQBCqgHizD7XabgUzzb+Mn1A+7tLUYvItIWH
         kJsQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXi4gKVoa3WNqGxlt4082uEa/TzJywvprKy0bJimK04UpehtZKZ
	PQ/qtONwFkPQnUES702YAQM=
X-Google-Smtp-Source: APXvYqx5dcs+QUjohwFN+1maioExiGLVqqgx51ORNcwIiea5idY3bNyxImoUaZyLOI2zHm+oPaSuRQ==
X-Received: by 2002:a2e:9a93:: with SMTP id p19mr30630363lji.177.1582550920651;
        Mon, 24 Feb 2020 05:28:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8790:: with SMTP id n16ls1508150lji.7.gmail; Mon, 24 Feb
 2020 05:28:40 -0800 (PST)
X-Received: by 2002:a2e:990d:: with SMTP id v13mr31423825lji.47.1582550920032;
        Mon, 24 Feb 2020 05:28:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582550920; cv=none;
        d=google.com; s=arc-20160816;
        b=SH62NjrVp/yh2QyIkddYA1yjtGsQixLQ0etspZrG4W6PJspf+iiUb+33VUSKhTc3uj
         X8CqviEUXN6TUEwqJHWMrAHQxH3bYhrPRDzmwmDXyRKa9kpFl1RMNiz8uK9OBh4Wiyl2
         WhX5kRFOX/X2xJ+Jzxwk0SxNv8D+akeOTBEyKu2vYF6XHSoxjP2lqDy7s3rvZ6e0pjnt
         k/Uz5YaBDqqIJsRmfdLfAJCk+kXqKYZlBb7geVVCbtxgUxTzP9IZQYMQR0WlW5DIFsTr
         05aM5HX8lYbNDSgigt+p3EXwC08tpf/3y1ypeohJFf263QkK7qqKWtjypy3qu+EGoD+v
         2+1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=dd7SuRdZJyeTO3NdOLqvByk5vzqCmaPx6KxBGqi0tMo=;
        b=zTqYSGMypQRhLxZUmLaVYbhugpdHJxZxpXe/c8IK+5e+aft8Cj6742dR4r2WLgYecX
         j1+OSPfpcQvPesPwWBIc7FpdBXLvp8H8pLPqEJW/Nj8ccDECF+ScyJiI0QvkDPgN99rX
         +tA5tMgAeZmCKWG2TUEYOYjfVl5R7ModvJ+RInWhFGaMvk2/J5w4+O+/EOeJgnONWEoS
         fZO4Y/ZHgZhysqtlQVLrRWzlxkno+Lw/V9faEljulPPvY5QCgwom7xde7zVoyKFCC4Qf
         mQhtWlYC34hX/+SgHRWB80uK9So+IM/kaZj20n1t7sPGm9cW1lg7ZQtPKiiyXDacZscY
         DsSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of matz@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=matz@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id x5si1087039ljh.5.2020.02.24.05.28.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 24 Feb 2020 05:28:39 -0800 (PST)
Received-SPF: pass (google.com: domain of matz@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx2.suse.de (Postfix) with ESMTP id A9C1BAB6D;
	Mon, 24 Feb 2020 13:28:38 +0000 (UTC)
Date: Mon, 24 Feb 2020 13:28:36 +0000 (UTC)
From: Michael Matz <matz@suse.de>
To: Nick Desaulniers <ndesaulniers@google.com>
cc: Arvind Sankar <nivedita@alum.mit.edu>, Fangrui Song <maskray@google.com>, 
    Borislav Petkov <bp@alien8.de>, 
    Nathan Chancellor <natechancellor@gmail.com>, 
    Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
    "H. Peter Anvin" <hpa@zytor.com>, 
    "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, 
    LKML <linux-kernel@vger.kernel.org>, 
    clang-built-linux <clang-built-linux@googlegroups.com>, 
    Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH 2/2] x86/boot/compressed: Remove unnecessary sections
 from bzImage
In-Reply-To: <CAKwvOdnvMS21s9gLp5nUpDAOu=c7-iWYuKTeFUq+PMhsJOKUgw@mail.gmail.com>
Message-ID: <alpine.LSU.2.21.2002241319150.12812@wotan.suse.de>
References: <20200109150218.16544-1-nivedita@alum.mit.edu> <20200109150218.16544-2-nivedita@alum.mit.edu> <20200222050845.GA19912@ubuntu-m2-xlarge-x86> <20200222065521.GA11284@zn.tnic> <20200222070218.GA27571@ubuntu-m2-xlarge-x86> <20200222072144.asqaxlv364s6ezbv@google.com>
 <20200222074254.GB11284@zn.tnic> <20200222162225.GA3326744@rani.riverdale.lan> <CAKwvOdnvMS21s9gLp5nUpDAOu=c7-iWYuKTeFUq+PMhsJOKUgw@mail.gmail.com>
User-Agent: Alpine 2.21 (LSU 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: matz@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of matz@suse.de designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=matz@suse.de
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

Hello,

On Sat, 22 Feb 2020, Nick Desaulniers wrote:

> > > > In GNU ld, it seems that .shstrtab .symtab and .strtab are special
> > > > cased. Neither the input section description *(.shstrtab) nor *(*)
> > > > discards .shstrtab . I feel that this is a weird case (probably even a bug)
> > > > that lld should not implement.
> > >
> > > Ok, forget what the tools do for a second: why is .shstrtab special and
> > > why would one want to keep it?
> > >
> > > Because one still wants to know what the section names of an object are
> > > or other tools need it or why?
> > >
> > > Thx.
> > >
> > > --
> > > Regards/Gruss,
> > >     Boris.
> > >
> > > https://people.kernel.org/tglx/notes-about-netiquette
> >
> > .shstrtab is required by the ELF specification. The e_shstrndx field in
> > the ELF header is the index of .shstrtab, and each section in the
> > section table is required to have an sh_name that points into the
> > .shstrtab.
> 
> Yeah, I can see it both ways.  That `*` doesn't glob all remaining
> sections is surprising to me, but bfd seems to be "extra helpful" in
> not discarding sections that are required via ELF spec.

In a way the /DISCARD/ assignment should be thought of as applying to 
_input_ sections (as all such section references on the RHS), not 
necessarily to output sections.  What this then means for sections that 
are synthesized by the link editor is less clear.  Some of them are 
generated regardless (as you noted, e.g. the symbol table and associated 
string sections, including section name string table), some of them are 
suppressed, and either lead to an followup error (e.g. with .gnu.hash), or 
to invalid output (e.g. missing .dynsym for executables simply lead to 
segfaults when running them).

That's the reason for the perceived inconsistency with behaviour on '*': 
it's application to synthesized sections.  Arguably bfd should be fixed to 
also not discard the other essential sections (or alternatively to give an 
error when an essential section is discarded).  The lld behaviour of e.g. 
discarding .shstrtab (or other synthesized sections necessary for valid 
ELF output) doesn't make much sense either, though.


Ciao,
Michael.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.LSU.2.21.2002241319150.12812%40wotan.suse.de.
