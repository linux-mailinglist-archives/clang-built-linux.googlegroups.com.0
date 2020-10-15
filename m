Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBJOZUL6AKGQEUT6DVDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DADA28F9E8
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 22:10:14 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id e142sf102211oob.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 13:10:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602792613; cv=pass;
        d=google.com; s=arc-20160816;
        b=EyoQ8gS2NE+biGRoE+L53/RfmUxADccEFMCTsri7OhVtfhdGjd/AArQd/vIpp5gk7s
         r9n6xEvQlOZESK7zqAxB3M/aQWax1QnbWc/TZ6KCAJDGwd+GArIwP1b/W1u1PYsF0gA2
         hWWoqT8IhpNKnfmOpgU1yeOlEuxh8aZH9RcmivquyrLf94upvvyPKD7rrQslpWCYe04H
         GssZBZ/PmtmrT44A3jzTi7b0KUhsWi/lXugNCGvVpLK3A2fmNGzDrxVXi8KP2Wdr5R8I
         36/kX0+6CxbNA9+rARVP+7l+Gp2ro6hvOfjUxn/ywByHofE36ldkCfJr4/Rfjm/OB5/X
         Znkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=AW1Yi72vo3XvNV7OIl/RWfVUYlUpz+nbIrnOouSC9kw=;
        b=a9fx2GjagpoPktR1P1engXgaw8bxunSKjny2yAMiGyUN6Al6SGzzAHZl9CUyHNFNqS
         RT2qtgv/nquoT8l0mBphxYwGdyOFuA1UZCuCJyounjjsHKqodTZM79AEK69uliFOU5Rs
         GyqEXYp5kfog+1ZQJwmsg7PG1tKYRjFaDTCs+Gnv30Vf04oQxtgnvh0PK3ezVzmuXuXM
         zOvXVuBWwAG9D0oOTmGgH/pSFp8vHf/dSTAH3c+z1uykkREVEGkIuT2No3v66/mZftkR
         lrK1UHg9+KAl4xkBHoyaQIvEi6X7DJ5pjaSxQFc9RwO5HAq7R3lXwgW0rdTp5QdcgFst
         vnXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=G9tprhOh;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AW1Yi72vo3XvNV7OIl/RWfVUYlUpz+nbIrnOouSC9kw=;
        b=Dcf+XO6QC+BJa3RfJKnnQuDsZ7KZitxC27atOSNwyhd6dEQak0UL5COatn3q5j5M01
         zd4a/FdkWe+O0SgOPfPFTrqrS0PMnXgqAHJJBVVBJgT8CUlYGUgFQm92zL2dK4o7p2cs
         WEhaM8AEDPbAOBpcDWv9LUMHTa+uSzdNM40N0OjdrlirGdyvQ29XpgjQPROTF5cKdhmw
         6AGg+j8Sl7LtxN0EsC0s2DgFpqGrCBz5twVwmP3F43w80Xh0a9Qfu4y5XuPJf1Em5tK3
         l2xYK65XGyLPri6n6Toi5R7eJDOc1EvkLm0ncq80tvmQ/DH5SYh0+3DZlPCMBb9LyuvA
         9E8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AW1Yi72vo3XvNV7OIl/RWfVUYlUpz+nbIrnOouSC9kw=;
        b=McrecyGATROxUkJYfIfQy+WZ3IrxanPQ7iX0lmVDOMTbI0L3tM6ZtSjSamhKe6F8Ly
         XI3fzJraGfsncVTRnuyewQ9qlEOKI4N9Pppw6KE0sTBixb3r97Q9qbiSIXLou9S7Sp6v
         LLU/Ojd48xnEmbTz2QCgNXpn+SQNGBkBM1jSoGXMMuTgPJgiXEg0s9kLZTJad6lEdXsq
         HiL1wzmCi0ccA5Rj63wphW2xyUNd/Cx69X0NklXrygO+q6hPiTONC1Mfau8mDUoAfOkJ
         gDnizYhfporFSUiPVEAyJYQxMNwE4zyZ78OQ0HDnv+XOk0HUK9K/sF/4LmSuDEzICl6b
         ugvQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ikDGzWE7RbeJfEPx3w66lhsV0TpwTlwW0XehJxGHuI+PynU5p
	S0x9yCA6eqh/sqMyP1wN3tc=
X-Google-Smtp-Source: ABdhPJy6j62167bhMJLVspYTGZ03HpzaApNZlLnAoDif2hZM/a05ZI+ME5PgBDMMsrEZD/1/nG4LUw==
X-Received: by 2002:aca:55c2:: with SMTP id j185mr123907oib.13.1602792613124;
        Thu, 15 Oct 2020 13:10:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:20cb:: with SMTP id z11ls52584otq.9.gmail; Thu, 15
 Oct 2020 13:10:12 -0700 (PDT)
X-Received: by 2002:a05:6830:12c4:: with SMTP id a4mr130004otq.356.1602792612756;
        Thu, 15 Oct 2020 13:10:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602792612; cv=none;
        d=google.com; s=arc-20160816;
        b=Gb3+LMG7YnvPqInDM9auOq52FGgq94fb/Y8wuLxxaqbsuiKvZfUBHkh7p+xUwjT4NY
         RloCm8J/M4v+EIs5+0G5ikkiwpYYVZtSyPilNexUPGxl0qHDO2geZhk8s+KLiZPMi6sa
         E69a9QKNY8Q4XtNMSp8+Sh5cs4B+p2DJXOknT5KybdsfGAkEelz9zOEDPFbKQuwtMYIw
         WE6IYw1UkVShrBBAz6jUUwH4nsbkIuzI9K7isnPAZVCDFgHdIQASXDnL9SL8pjxf8b2U
         EGmkUb3D61GJ6eAXgwQ1FKj6RQL53CLayxc+iLyJyAPpvZpaSFIxWitcqmvIjXN3meQ/
         uwcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JSZZdQFYiEF1TvfexFPRAVhe3w/8OtEerqz5dRK9QXg=;
        b=wXHVrZYw8SRyPHOzFjj9yRleCx/dmnI+n4BAlE1v1qfLd/twClqhGMSf/bJA098pBO
         5HHi4DgEl0jJlfOoVMpsRd4weu9z/KSfbaaU+oVU2aSKB95P88Ba4QqtfRr0sEMU834B
         bxNaH2gsJJKWgSlsRSoyYKiBVG/dtr47LIrA+hDBe/ajUzuyiQeDwpFScD/sLLtxS+/t
         T8MWG70xBbsssh94EhXUTmw9E81gn6qvL2RANfPN5JfZK6AzhWDJ8AbbFXC3mzfuuy5R
         7+tqy9kyqaWO7gN4eEyFrmzU1cEGgWhesycRjSBJg48/pUseJ/vN+lwzaVVXIJlUHweR
         edbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=G9tprhOh;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id d22si39955ooj.1.2020.10.15.13.10.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2020 13:10:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-412-te9p4b8XOfue84xzeHLT6w-1; Thu, 15 Oct 2020 16:10:10 -0400
X-MC-Unique: te9p4b8XOfue84xzeHLT6w-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 59D8A803651;
	Thu, 15 Oct 2020 20:10:07 +0000 (UTC)
Received: from treble (ovpn-115-218.rdu2.redhat.com [10.10.115.218])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 233035C1BB;
	Thu, 15 Oct 2020 20:10:02 +0000 (UTC)
Date: Thu, 15 Oct 2020 15:10:00 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Ingo Molnar <mingo@kernel.org>, Sami Tolvanen <samitolvanen@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v6 02/25] objtool: Add a pass for generating __mcount_loc
Message-ID: <20201015201000.poiepgn5fssnogtf@treble>
References: <20201013003203.4168817-1-samitolvanen@google.com>
 <20201013003203.4168817-3-samitolvanen@google.com>
 <20201014165004.GA3593121@gmail.com>
 <20201014182115.GF2594@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201014182115.GF2594@hirez.programming.kicks-ass.net>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=G9tprhOh;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
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

On Wed, Oct 14, 2020 at 08:21:15PM +0200, Peter Zijlstra wrote:
> On Wed, Oct 14, 2020 at 06:50:04PM +0200, Ingo Molnar wrote:
> > Meh, adding --mcount as an option to 'objtool check' was a valid hack for a 
> > prototype patchset, but please turn this into a proper subcommand, just 
> > like 'objtool orc' is.
> > 
> > 'objtool check' should ... keep checking. :-)
> 
> No, no subcommands. orc being a subcommand was a mistake.

Yup, it gets real awkward when trying to combine subcommands.

I proposed a more logical design:

  https://lkml.kernel.org/r/20201002141303.hyl72to37wudoi66@treble

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201015201000.poiepgn5fssnogtf%40treble.
