Return-Path: <clang-built-linux+bncBCVJB37EUYFBBYNYRL6QKGQE6EBY5OI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A10C2A641C
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Nov 2020 13:19:46 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id m64sf14676513pfm.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Nov 2020 04:19:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604492385; cv=pass;
        d=google.com; s=arc-20160816;
        b=WhsWWD5+k726y6iSMgMtWzLgvynzhdMNbuXW2TsfQHSu9v9wurd29kJocZS0AQ0NIZ
         3mQer8wPMubeyOuv8wA6Nd0KThQkOfVp9YZ/si8XpSairpp+vawvG+DjPmjRvwC1Jrgs
         kn1gYEq36EuMWzMG2YwAL/j7DWwTS4LpvSBfmNQA+5Yui5q8xftF2in1kcD0IEEpiC7g
         1+EhGbQsN1AYSwpZGeGHEOJadAq8vmuddozhvofYWvIoS/dPaeqfNyuDUKx8jRQUO7cP
         q/T4As0w9YeNezLzXmD8DebAFTYlkzga6GK902Nsmlz7X/KHIJ0yUPGfaWjmSkOzJw24
         wkWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:reply-to:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=gZug2Pzx6FLeqk2D6K/RJNrBZ7JpB2nRQVphJlalDDY=;
        b=ut2XT00kmF+PGjLIoy5rRjfdwGZi4yPdZp/StpQOTiAyFreZ1pdTf0hYJIjxg3j16P
         tW34huSsWZPApn/5HjH55SSomtBS+3bIaf9q9I2CmOXpL5Hcy+PccG6Mp6hCLGDONe0f
         z5icB3okA7t8GKKP4gwXihb0owK2sMU/Zb4rlGf8gl+q5R4vP5iYG9DPR4jY9yU94HPa
         O/Qto5lglj18TOcO9b1rfhb4GZTvl0YyClImBYJv/UMGbIlPgoXXsXN42LKzXSek3wqN
         LZWI52OOwxynpgxVy49Nx1i/lbcJBnwkhGhqPABtB1afPlf0DWQK8/w3N11pklmJ9DuB
         MmLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=BudQqhVg;
       spf=pass (google.com: domain of jakub@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jakub@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gZug2Pzx6FLeqk2D6K/RJNrBZ7JpB2nRQVphJlalDDY=;
        b=EGl5vo+9VSv4/W7cHkL5VHOmhQFFxC8+eJSrYmJKZXOPkHq4prGR9IfNUtyazFJp2e
         /adGQ6c5BAqSavnQ/L1lloI5v9p+rUE60KjU6kbyd8lhE2/BALZVkaDQYGPVu0QgJyNd
         nI5taY/dereASpU1g1K+Yiv+mjeJdj3bHMb91auGIOpurXCECEbmgiD9hXu7Mv6YAFpe
         Zc6t6JgmMvXWCcVo+SxRb0FRVOw6dE8MX2S7TvuK7Qd524Qa2BYAcRXgFvKEC12fcZGW
         RcguEkTBhTvfES8ZlRyIstbbQ9qO0TghkkphrO32k6BVN86lP5CIM4CCrbZmhTzLYISK
         wbhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gZug2Pzx6FLeqk2D6K/RJNrBZ7JpB2nRQVphJlalDDY=;
        b=Ly+XZABJaeQsTCjSJL7kCDYOl42wzjE+u0hTnfwLj1wbdMD7iJdMtDgw2Y4uM8dRH4
         FHlKctSRLlBkpk05PuCpj7OrT+HgyAPgDUA3VZzFlocwFFougc7YnigAhJDyQUpz36Gz
         NC57DlsaF1zOiHuimAcmzqWSTZsJJMcqA8VumtCw/0rE3josE7Oqki1uuB0vdSy6Ya1F
         XT+PI+05yCvpCMkljQN8rydVBi9DmhsXwr/jTe1iGt2/grAxLM3N9Ftabu8Bv48HSgQU
         ZvPedXMHVggFP7EhZPq255AanOtL4hHKC0yfjszWKuwpKTeGqxS+rR63q37qRyAqP+U7
         Ej3g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531BC5Q+Y8TKsSfs2tdGMGGVtTPU52JLyRQogOOwe/2twVthGBF4
	49rXIbIJJFYeanI5aAS/uMs=
X-Google-Smtp-Source: ABdhPJy6oS0gM/XSns5eTaIhk2xfk9Y4cEF8rmetmUI0TRa+kO5XTl9xrx7ug+eFUAjoJa5f3/szDQ==
X-Received: by 2002:a62:168a:0:b029:160:193d:b278 with SMTP id 132-20020a62168a0000b0290160193db278mr30815735pfw.48.1604492385199;
        Wed, 04 Nov 2020 04:19:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:f68f:: with SMTP id cl15ls1176963pjb.0.canary-gmail;
 Wed, 04 Nov 2020 04:19:44 -0800 (PST)
X-Received: by 2002:a17:90b:1413:: with SMTP id jo19mr3982582pjb.221.1604492384561;
        Wed, 04 Nov 2020 04:19:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604492384; cv=none;
        d=google.com; s=arc-20160816;
        b=SNwbdLmTMB3iit6o58pnssH3qJWhyj9c+oEG5LcwWzJfduRywnDDPbHpuz+tBpJON4
         c15SLL1ZkHcuXzJ9DRTFIOZeJZLCUboWhq9v5AhgGjTfvtKVMhrWQ5INCnkrSXOngxB1
         BEbo88cezqVpvO4ups8fz5h1WH9UypAn2S4V1kkDSMeB0a4MgCiT2L+aYfl4mqIswe/j
         N2QQVcVJ4mCj7lH7VVnxNYw9QYGcxE1sXLLpT+77HNbzujUPO4VQijGWw3jC8fqjzBQx
         P5AOMu3LLcyKffbc2T+oEE8rmRJnquiweqc0xA8302EBN6eHGz4f5wOr2UaF5FnnZXsd
         9+Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=gvbJKCfeEljigutKFUzdUYW55JqbQpoNpBQ+4SF+G30=;
        b=EjSlCUZ/iOxJjfoiDQ9IuohdNwDWpjamoE7x76SWBCgksIkbjkd1x8HqkikU5aD7bv
         1vUNo0z1JHviwL4Ie1gxyYUxBL8yQXVRSye6HODeGrlAOB62dR6fAsInjk9Zn+jMx068
         h4sZxLkqiIZzohEPOv8nn1M380zF2401bk/ohVPo8JEGrABAMTevdqJDWF20hecAqA20
         61ScXkoGFTn5WXhhDxOrwsozvSK3KR0voA9fYk8hPOAQlmrwFAYE5hOo6mgtgQX6OMI2
         lwPWayH6V9aTo8MH0xCMGDhucvnjUIlPiK9fnh0IHbp0Vf8vZDflhU4e701L4sm4Y6Q2
         NSeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=BudQqhVg;
       spf=pass (google.com: domain of jakub@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jakub@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id z12si114651pjf.3.2020.11.04.04.19.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Nov 2020 04:19:44 -0800 (PST)
Received-SPF: pass (google.com: domain of jakub@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-382-xmFgMa1aNs-6L8PAORyRBw-1; Wed, 04 Nov 2020 07:19:40 -0500
X-MC-Unique: xmFgMa1aNs-6L8PAORyRBw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7508A192CC72;
	Wed,  4 Nov 2020 12:19:39 +0000 (UTC)
Received: from tucnak.zalov.cz (ovpn-113-127.ams2.redhat.com [10.36.113.127])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 017C06266E;
	Wed,  4 Nov 2020 12:19:38 +0000 (UTC)
Received: from tucnak.zalov.cz (localhost [127.0.0.1])
	by tucnak.zalov.cz (8.16.1/8.16.1) with ESMTPS id 0A4CJZRx3343910
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Wed, 4 Nov 2020 13:19:35 +0100
Received: (from jakub@localhost)
	by tucnak.zalov.cz (8.16.1/8.16.1/Submit) id 0A4CJYBh3343909;
	Wed, 4 Nov 2020 13:19:34 +0100
Date: Wed, 4 Nov 2020 13:19:34 +0100
From: Jakub Jelinek <jakub@redhat.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        linux-toolchains@vger.kernel.org, Alistair Delva <adelva@google.com>,
        Nick Clifton <nickc@redhat.com>
Subject: Re: [PATCH] Kbuild: implement support for DWARF5
Message-ID: <20201104121934.GT3788@tucnak>
Reply-To: Jakub Jelinek <jakub@redhat.com>
References: <20201022012106.1875129-1-ndesaulniers@google.com>
 <CAK7LNAST0Ma4bGGOA_HATzYAmRhZG=x_X=8p_9dKGX7bYc2FMA@mail.gmail.com>
 <20201102081810.GB3788@tucnak>
 <CAKwvOd=ez9nXCdQu6QRbNk5tfUAsSj9RLhopZtNE4RhDupg7+w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=ez9nXCdQu6QRbNk5tfUAsSj9RLhopZtNE4RhDupg7+w@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Original-Sender: jakub@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=BudQqhVg;
       spf=pass (google.com: domain of jakub@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jakub@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Tue, Nov 03, 2020 at 02:21:22PM -0800, Nick Desaulniers wrote:
> > > This script fails for GCC 10.
> >
> > One thing is GCC DWARF-5 support, that is whether the compiler
> > will support -gdwarf-5 flag, and that support should be there from
> > GCC 7 onwards.
> 
> I should improve my Kconfig check; I don't actually have a test for
> -gdwarf-5 for the compiler.  In godbolt, it looks like -gdwarf-5
> produces an error from GCC up until GCC 5.1.  Does (5.1 < GCC < 7) not
> produce DWARF5?

No.  After all, those versions also predate DWARF5.
All 5.1 - 6.x did was start accepting -gdwarf-5 as experimental option
that enabled some small DWARF subset (initially only a few DW_LANG_* codes
newly added to DWARF5 drafts).  Only GCC 7 (released after DWARF 5 has
been finalized) started emitting DWARF5 section headers and got most of the
DWARF5 changes in, e.g. including switching over most of the now
standardized GNU extensions from their DW_*_GNU_* codes to DWARF5 DW_*).
With GCC 5/6, you get:
echo 'int i;' | gcc -c -o /tmp/test.o -xc - -gdwarf-5; readelf -wi /tmp/test.o | grep Version:
   Version:       4
while with 7+
   Version:       5
instead.

>  Maybe there's a more specific test you had in mind?

Guess what you want to test is what version you actually get in .debug_info
if you compile with -gdwarf-5.

> > Another separate thing is whether the assembler does support
> > the -gdwarf-5 option (i.e. if you can compile assembler files
> > with -Wa,-gdwarf-5) for GNU as I think that is binutils 35.1,
> > i.e. very new); but only if you want to pass the -Wa,-gdwarf-5
> > only when compiling *.s and *.S files.  That option is about whether
> > the assembler will emit DWARF5 or DWARF2 .debug_line.
> > It is fine to compile C sources with -gdwarf-5 and use DWARF2
> > .debug_line for assembler files if as doesn't support it.
> >
> > Yet another thing is if you can pass -Wa,-gdwarf-5 even when
> > compiling C files.  There are several bugs in that category that have been
> > fixed only in the last few days on binutils trunk, I'd suggest
> > just not to bother, GCC 11 will have proper test for fixed assembler
> > and will pass -gdwarf-5 to as when compiling even C sources with -gdwarf-5.
> 
> Do you have links?  I would prefer to do feature detection rather than

The
https://gcc.gnu.org/r11-3693
https://gcc.gnu.org/r11-4338
commits contain those tests in gcc/configure.ac

	Jakub

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201104121934.GT3788%40tucnak.
