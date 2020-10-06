Return-Path: <clang-built-linux+bncBDG5L5UT2UARBKHX535QKGQEXDODTXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id AE29928435E
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Oct 2020 02:34:50 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id b22sf413186oib.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Oct 2020 17:34:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601944489; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ko7qZwYRdt3xAiEdo1LT1wDIX82Yn2sPYERTPpael/VLrE+67qB4WRKoPF0llhsxCA
         FXbJy/8hIC0815cGIbjF1eDvfh6H00FZTVQC3gwaYGB1QJWcaOe5jesa6Y/5Yyoqxkz4
         eo17p42cj5LIX24ZylQ2QBR7rTKdoxSgRM+gLI4bl5Pa7D2RIGPc4Neejhl5U9/kERbX
         ZC8hPsa1iRCLDtuSpqMfAoBVYmnQbSLvZFQwxVh463thWbMigMBG726HCNwhVXkpRKDA
         Ov2NJWz+8irwHpGBrqiaVH5uNVz20eRU/YflPh+sJ7Be+Wza04nrWN2vBUJmqXuszuXD
         +h9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=dv7xmb4TEdXLDsQPabjIl8oi1Hz4pS0dK5zZbENGOQg=;
        b=gfjaBtX32whOHzNmdYXIaaZJiRs4lIrY45x9rwEm/CLYM0O8938qQeVlKLxysRFV28
         7cuMvoGSCI4klRoKKwxoEQeeybf9v1qGqJs2gy/N54EwyU/25tCkMPZoiRrJJFpuhzl/
         /A0p9XusgJZ1JDjHLjpvHWIGR6ZLD5+xr7hMqDbmAC5iFdyywoPw+b5G9ngiKwamoy4+
         YPrw6GRFlfxE6mt9Y6zdjpA89890ViIvOqtbhmoMUpkBVYHLagPQQ0AneE41tCjkK+4l
         aXvUiVcibv/YM+2q17VrsNzf6bxcRjnCjZqA2soRUR43LdiPhyT2bQqZ5mkrVheRu7RA
         pS5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@jms.id.au header.s=google header.b=ibuCy+u5;
       spf=pass (google.com: domain of joel.stan@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=joel.stan@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dv7xmb4TEdXLDsQPabjIl8oi1Hz4pS0dK5zZbENGOQg=;
        b=cZW2m7dXTydLXFhp5Spyw/FIYjRSqR5X93TcBpwfAI/EkGjNzpllUVWLY1ogfHivoK
         AS3mXUJbsTP5x3KpV9n2WilFN8xmtQnZLl/A9LV7MB8HTDJN09E+1Q+I4vpquQnasLhs
         ZbB+9X6wv6LpJrsxpJyhA+o7Ukw5n7sTD2tNS+Tuve4dL2pEcbCkUlDKlHpzdIHna6l3
         5BmSx1SeyK6yVkkIB66mjRzXIUrjP2ezozRwhmmcz/vpw6wQWajLMU4gEcygxFGp0hzh
         1JQuivmXUdcZMhDB/cDd6CDyo0cseKW2AF7X8qT5fonbiU9lNRMFA1EHKCek6ydHNeA/
         0VAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dv7xmb4TEdXLDsQPabjIl8oi1Hz4pS0dK5zZbENGOQg=;
        b=WneP7yvNzQMvz/l6N5VeAo9QtrFp36vbFj0oVuwCa2GwJM0PQ0u91S/HvQA7MXxjWi
         xJoD8sIdCFgxWIPsbFuZwgYknn8mso2boHwzSlU2Od8nSVHWMUcGuyd9h4Op8Vbj+39e
         BW6dgg74bg7HO/IbXKpmoiRXrlHyNvD5s8yvfLEtfbN2D+ZbYX2nUz1eTN3EfhLFpKLM
         Mvyv50BlcYE8Yvq8KREUH3PDfq2TcnIAo6U2y+SJW7D+CkWWgP7GU8SofPmbd2Ee0O3B
         W8anWcyUGQ5lOgQ1ZOe+MeKOwr9NQPQpKmXHN8LcBskvjwJjGm9xSwk2HJudLfK47dSg
         2xvg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53131+s7h8Ddwn6OnOtm2an58fs889FCH5Zqtk2irBiQ3txOqkv9
	KqErz39jcGfEkyNu2h3pWLg=
X-Google-Smtp-Source: ABdhPJxwofoi4w2w7PM/f98RiFxq79TdI12k283pQ3hhKEmDwt7Mp+PmZrYoIsZR6My8tiqm0vmenQ==
X-Received: by 2002:a9d:5cc2:: with SMTP id r2mr1348850oti.63.1601944489276;
        Mon, 05 Oct 2020 17:34:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:9413:: with SMTP id h19ls754734ooi.2.gmail; Mon, 05 Oct
 2020 17:34:48 -0700 (PDT)
X-Received: by 2002:a4a:d9c3:: with SMTP id l3mr1400976oou.27.1601944488531;
        Mon, 05 Oct 2020 17:34:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601944488; cv=none;
        d=google.com; s=arc-20160816;
        b=UjzcRb3NsHF3MkGbycKJoUQtIcXZbjZXpC+atGpDNK49N852aQJRDKekSz7hQbEMhW
         7/gVFbf49lIyRsR2juKgWDeQnYubkiq9ue79B+5H70GFFH5PvGwSYay/XGSDORLvinM/
         Fz6oCccEQsFKItNXk993CGhELwBP9wGblQEtWmC6wz/l9ebSBmQTH9hiCqHDpVAuf+ZA
         7SZkhRToqZ92XGZnwNDo0f8Bc51DtjBRjZA/rmS+2QSm6RtQrVGL8zLKAvWkXl7Zf3/t
         MBVuiYa1lDj517n93D1KVexFHtv7WwTOk39442SGzUo/luquhV19xnvUTJhOP5n4Y8oE
         v1mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BC+Sg9HWCWkWpUC1Bzc2G/+Jd/qZ/kelvEvSs6pcygY=;
        b=TIJxXkdRLV6Tn6uk5ijrhd5MCUvHTFlHRnAJDnExYzl874d4Ukd8rIUfURjR9L4sdd
         fp5j6oz99LJqfve1+UuD5HxDhhFw3/Yc9ZhQDAtp2newojQT53MYoTcdqlkhY60UXQrp
         jqCDgefK+71VebMwFC9CjZFrFVTOISjSWMwyzVuydjW0oPMrcPkhhqOsLaYV+ciXeP6r
         7cI33sY81nWpsepR/WjUta4TkQfaKMjOnkTZp+xl8XtQH+m7f9RfDT9HvmRyeDix3zgS
         mvWQcgZF8DEuj3ZxDwwKowAw5AaDroKoF2fBwO5pDafNhw4x8YqOrcz0CUNoE7vYVY3n
         uqwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@jms.id.au header.s=google header.b=ibuCy+u5;
       spf=pass (google.com: domain of joel.stan@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=joel.stan@gmail.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id r6si317772oth.4.2020.10.05.17.34.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Oct 2020 17:34:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of joel.stan@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id m9so10856421qth.7
        for <clang-built-linux@googlegroups.com>; Mon, 05 Oct 2020 17:34:48 -0700 (PDT)
X-Received: by 2002:ac8:5b82:: with SMTP id a2mr2722902qta.176.1601944487836;
 Mon, 05 Oct 2020 17:34:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200929192549.501516-1-ndesaulniers@google.com>
 <CA+icZUVgfnVQ1=zjUGhGKnJAs9g3Q06sWN3ffNdrfZMZLCEkbA@mail.gmail.com>
 <133589afbe999347454dfcc46ae782897bf9e3a2.camel@perches.com>
 <46f69161e60b802488ba8c8f3f8bbf922aa3b49b.camel@perches.com>
 <CAKwvOdkhyvTpY6pHT+CLSsBFuKRWsXucjbwN_tyJAsryZXvG1A@mail.gmail.com>
 <417ffa3fd3fba5d4a481db6a0b0c9b48cbbb17c4.camel@perches.com>
 <CAKwvOd=P+j0RaQfHsXPfB0EL3oRgAu8Q0+spUOn_v-p2+3=3pw@mail.gmail.com>
 <aefe941251d5d58062d06099afb58dea1d1d4e17.camel@perches.com>
 <46040e2776a4848add06126ce1cb8f846709294f.camel@perches.com>
 <CANiq72mSjs4myQQtUoegjRggjTx9UF70nAcWoXRoTeLMOuf0xQ@mail.gmail.com>
 <20201001193937.GM28786@gate.crashing.org> <61445711991c2d6eb7c8fb05bed2814458e2593b.camel@perches.com>
In-Reply-To: <61445711991c2d6eb7c8fb05bed2814458e2593b.camel@perches.com>
From: Joel Stanley <joel@jms.id.au>
Date: Tue, 6 Oct 2020 00:34:35 +0000
Message-ID: <CACPK8XdwX=1T8WrsVYurL+JedEsb1ZTyrWtJXDLXycu-qu4UTg@mail.gmail.com>
Subject: Re: [RFC PATCH next-20200930] treewide: Convert macro and uses of
 __section(foo) to __section("foo")
To: Joe Perches <joe@perches.com>, Michael Ellerman <mpe@ellerman.id.au>
Cc: Segher Boessenkool <segher@kernel.crashing.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Kees Cook <keescook@chromium.org>, 
	"Paul E . McKenney" <paulmck@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Lai Jiangshan <jiangshanlai@gmail.com>, Josh Triplett <josh@joshtriplett.org>, 
	Steven Rostedt <rostedt@goodmis.org>, LKML <linux-kernel@vger.kernel.org>, rcu@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Paul Mackerras <paulus@samba.org>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: joel@jms.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@jms.id.au header.s=google header.b=ibuCy+u5;       spf=pass
 (google.com: domain of joel.stan@gmail.com designates 2607:f8b0:4864:20::841
 as permitted sender) smtp.mailfrom=joel.stan@gmail.com
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

On Thu, 1 Oct 2020 at 20:19, Joe Perches <joe@perches.com> wrote:
>
> On Thu, 2020-10-01 at 14:39 -0500, Segher Boessenkool wrch/ote:
> > Hi!
> >
> > On Thu, Oct 01, 2020 at 12:15:39PM +0200, Miguel Ojeda wrote:
> > > > So it looks like the best option is to exclude these
> > > > 2 files from conversion.
> > >
> > > Agreed. Nevertheless, is there any reason arch/powerpc/* should not be
> > > compiling cleanly with compiler.h? (CC'ing the rest of the PowerPC
> > > reviewers and ML).
> >
> > You need to #include compiler_types.h to get this #define?
>
> Actually no, you need to add
>
> #include <linux/compiler_attributes.h>
>
> to both files and then it builds properly.
>
> Ideally though nothing should include this file directly.

arch/powerpc/boot is the powerpc wrapper, and it's not built with the
same includes or flags as the rest of the kernel. It doesn't include
any of the headers in the top level include/ directory for hysterical
raisins.

The straightforward fix would be to exclude this directory from your script.

Cheers,

Joel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACPK8XdwX%3D1T8WrsVYurL%2BJedEsb1ZTyrWtJXDLXycu-qu4UTg%40mail.gmail.com.
