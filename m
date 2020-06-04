Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBO6E4H3AKGQE2SIS4MQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 330631EDB64
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 04:53:48 +0200 (CEST)
Received: by mail-vk1-xa3a.google.com with SMTP id h74sf1187457vka.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 19:53:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591239227; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wq6IUxiO4G+dC0to9G7tXgKeHvLnnLCD2h0icv8D4oUegGwTjGbmxCsefbbHzqGyjG
         V/OPvROAo3WGsEdStS3DVuNL5aacBWkNPtyVt9SyZt8LyLtxEo3HehrgcM5KrnSPKtEQ
         YKZvjH4lWoI5pAkEEqGVRgJMCPdMCghmYQjPzw2e0HJrxJ5FIcwfh+9au5IktzWEzMQo
         oNstKH5Vcm8K7JIDkS5AqU7oFpfs8TelmSDkvliSDW84I9oejtbgl8C2NRzIFtZyK2IX
         TYj+Ob7Nww1TM24uZB1rCDzquOcOF9SvPUkZJk8yjwtappKRCyagqDRIFGvHLqTROsm4
         fzNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=QH2PgDL6sABfXkBPSnz4V8Ow4cN0R2kP6KSBTh9bJWo=;
        b=kMg6KbMjR+talMom0X1CKhfqa1ol+ifGz1oy7irMwOyGg67oIJN/No5N5wWJP+fMAk
         obBPo2w1hER2puOmkJtZ21yiL+5FPzsK6Vt5XUq1rM2QPjCuDDKM38eX9kAPi/+xAQbz
         VPFasPi7aAi0uE2vSqDKZBc5jyRkJqAlcXVsMFYlZPM3KEFlst0e57J1Lns3UV3mS4Bw
         xCKUjdfg5Qh+0/Xku3nauHokBAyCX1yhld1rmdanj7P1qIIRZ/2LZ+PEg5r+72hTQFrP
         yWMmRfnNlj5q9PFTbbJgs27B3tyDu1+ZSn7qtWGlEI+dqdnfbLWYm/gwnMn83a5E9Vvr
         Ercg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gV3DINCK;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QH2PgDL6sABfXkBPSnz4V8Ow4cN0R2kP6KSBTh9bJWo=;
        b=INYG2WMT9SIRxNdBV0Lmrl05haIaifIeqP3AANJ9pIe+S9FTEKE1DVprvDhA/huWny
         YZiFUVKv4fxgItKLUdO2lH7zN8sVJh2p3wYFoDHF+p5Yx13qdlMYwNLU3pZAbJp2pmNt
         ek3ERq7ZvQcOkNTU43XGSlhZfikMs5mcFDNb6UZ4mwwL9Wr+dK/CgH5OJOeDZOxtpZ7E
         jhUo4FLu1pqF4Fr/bpClAK1PHxvBrzFfOSluenj0sswPf9FCB1IlCU9tPoV3D4omQ4zi
         CbFxaPa8oV+tDIglibdWfstC3AKH8w8w7otO/fALwojsbSyWXfyQQTazGOwdoYM3960z
         mywg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QH2PgDL6sABfXkBPSnz4V8Ow4cN0R2kP6KSBTh9bJWo=;
        b=h1YQcfK3P3k5fKTeb1aLOf1ju7bS3HdiEg/syV1qpooAiGTFauNJxI9utgLWm6YsAR
         z6vGhxziibNEWGIeeZKVuCgZECRr37qgtzvIUZ5wRweWvswBqIgOpH0e/1ByYJSoq+fM
         BluyEiECLoRrTDODOIVtiFxMI+IGk+4rd360IN22MHT1Nrd3QcEllzYUl3pfPCW6jvYR
         pQB3CtYcO53lcnHhe7p/dLs2W++cxzry/xx93LyVZZnfW6J58BRSSz/QxtsqQ1ighiXz
         T2NDvNl3dxAAhXL10yW7SpR65DfLxl0XwySRLCYmY83hnsrvW+7lv8edrlqmQ6GoU+ay
         u5dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QH2PgDL6sABfXkBPSnz4V8Ow4cN0R2kP6KSBTh9bJWo=;
        b=AlWkMCfxSrcYDczKmCXIZsbtlQgy+qy26pkF5FnQ9xrFxFtTmge1pgAgMG+KPiKlcO
         /sUvc3281/X75surKDMewmH3isMS/yfD6PGcjyXkSLVVKjsTnGXafux2wiBgf7BetLCG
         SKAma7iVegcMpjSOVLhr0K1xdwaaGLik/IR5m9lISsmzuIngqf7W7wSGa9IVCa8xT8Ez
         y1hmpqIe6rNUb7m4pqTEhddtMYO0srY/AjESZk+c6JIyEttrlEq+gbs0DjHTvvMjMRCD
         MT3A0hUBP63i0Sw1R2qpZqV1M7frpHbQ6MnXlTnpOO02WhJWoW5uteHKfev0pjR9G46X
         Fq4A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531iBHAdmx3v0XtcEXBnqg4rgm8kVe5E6E6G9yjyTkgLzVi+FH74
	ZVhmKX7K8gLBhR99BlKZRsc=
X-Google-Smtp-Source: ABdhPJyaVzi8svnW+8dNg5bkEXnFH9PpKE4hgs4VZPbUFmLdfXSU4RAtllCOnEi0pjuicNt8hVTqqw==
X-Received: by 2002:a05:6122:106f:: with SMTP id k15mr1937118vko.21.1591239227194;
        Wed, 03 Jun 2020 19:53:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f308:: with SMTP id p8ls552012vsf.6.gmail; Wed, 03 Jun
 2020 19:53:46 -0700 (PDT)
X-Received: by 2002:a67:8d48:: with SMTP id p69mr1865057vsd.86.1591239226791;
        Wed, 03 Jun 2020 19:53:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591239226; cv=none;
        d=google.com; s=arc-20160816;
        b=rzH4nYP0N66pAOEqpaqP8XZqiC4SCzHJ1yFbh5HH7akFbSWsvnZNnrwrLcp6B7p4jI
         GHNDG4RM1Pfrajz9SNcD1AjiVC3Q7rnE+/s5wlpXaYJGQwIdODegyL05IYmOIrnp1wlx
         wPQqzGnnendiLjpoUEpOLecrvs7MDckB5hSKOVmNvQA/xIBsx8LN5vjLK5AH7FvNz7/J
         6m96X8qdVqlUq+8sBe98gJvvy7Mkj3AUf8N8bwh3FkV8Qx2zNx2de29qTV1ZMe5K8bVx
         aSDL8V/KRlHnpfvRKeTWkQECp978x0PrOv2isvhnUpWZIxSqWwakl80IQ0UPdrhmG8jL
         4dzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=iPa6WDxkXnezV97Gv8ktsN2vMvnblioziS1zAvyim80=;
        b=0lwHu1wdnEfga9ZEXL9WzxiTVbhq6A0wjD/zpMciMbhoVVXRKwxtjMUSRjJytwen9i
         OE7+dSpCr1af6SKq4w5rP21r2PHXHRnZpeZ7SR65iY9cdLVKtGyGmwhy8ficVrntQUEv
         ZxzEbyUWik/lA4ui1ApS3zGceG4Yc83nuiAqkf7K3L6SCQxJCf7DHjqD5pZWSU/PRMv3
         vKYB6NiCdgbgEwrQ0uc0Mcx5RfDTttz+LPd2oM8J2QrTW/XviCygjvHXwQ8upeBwxAbA
         tjUujRPEy/7OkJYwFhOJSvxe0Tik112t+ZzqOhkYC2bAa/WDUBAaAxWSSjuvv66Pbkco
         S0/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gV3DINCK;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id a126si178621vsd.2.2020.06.03.19.53.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2020 19:53:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) client-ip=2607:f8b0:4864:20::d43;
Received: by mail-io1-xd43.google.com with SMTP id p20so4643069iop.11
        for <clang-built-linux@googlegroups.com>; Wed, 03 Jun 2020 19:53:46 -0700 (PDT)
X-Received: by 2002:a05:6602:1616:: with SMTP id x22mr2465452iow.70.1591239226196;
 Wed, 03 Jun 2020 19:53:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200603233203.1695403-9-keescook@chromium.org> <ff9087b0571e1fc499bd8a4c9fd99bfc0357f245.camel@perches.com>
 <202006031838.55722640DC@keescook> <6f921002478544217903ee4bfbe3c400e169687f.camel@perches.com>
 <202006031944.9551FAA68E@keescook>
In-Reply-To: <202006031944.9551FAA68E@keescook>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 4 Jun 2020 04:53:34 +0200
Message-ID: <CA+icZUVg24VrpPgMdfsgPa+Wckci9XkzKUdtwhVB3ZW96uZOWw@mail.gmail.com>
Subject: Re: [PATCH 08/10] checkpatch: Remove awareness of uninitialized_var() macro
To: Kees Cook <keescook@chromium.org>
Cc: Joe Perches <joe@perches.com>, linux-kernel@vger.kernel.org, 
	Linus Torvalds <torvalds@linux-foundation.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Alexander Potapenko <glider@google.com>, 
	Andy Whitcroft <apw@canonical.com>, x86@kernel.org, drbd-dev@lists.linbit.com, 
	linux-block@vger.kernel.org, b43-dev@lists.infradead.org, 
	netdev@vger.kernel.org, linux-wireless@vger.kernel.org, 
	linux-ide@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-spi@vger.kernel.org, linux-mm@kvack.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=gV3DINCK;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi Kees,

can you push that change also to kees/linux.git#kspp/uninit/v5.7/macro ?

Thanks in advance.

Regards,
- Sedat -

[1] https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/log/?h=kspp/uninit/v5.7/macro

On Thu, Jun 4, 2020 at 4:44 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Wed, Jun 03, 2020 at 06:47:13PM -0700, Joe Perches wrote:
> > On Wed, 2020-06-03 at 18:40 -0700, Kees Cook wrote:
> > > On Wed, Jun 03, 2020 at 05:02:29PM -0700, Joe Perches wrote:
> > > > On Wed, 2020-06-03 at 16:32 -0700, Kees Cook wrote:
> > > > > Using uninitialized_var() is dangerous as it papers over real bugs[1]
> > > > > (or can in the future), and suppresses unrelated compiler warnings
> > > > > (e.g. "unused variable"). If the compiler thinks it is uninitialized,
> > > > > either simply initialize the variable or make compiler changes.
> > > > >
> > > > > In preparation for removing[2] the[3] macro[4], effectively revert
> > > > > commit 16b7f3c89907 ("checkpatch: avoid warning about uninitialized_var()")
> > > > > and remove all remaining mentions of uninitialized_var().
> > > > >
> > > > > [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> > > > > [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> > > > > [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> > > > > [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
> > > >
> > > > nack.  see below.
> > > >
> > > > I'd prefer a simple revert, but it shouldn't
> > > > be done here.
> > >
> > > What do you mean? (I can't understand this and "fine by me" below?)
> >
> > I did write "other than that"...
> >
> > I mean that the original commit fixed 2 issues,
> > one with the uninitialized_var addition, and
> > another with the missing void function declaration.
> >
> > I think I found the missing void function bit because
> > the uninitialized_var use looked like a function so I
> > fixed both things at the same time.
> >
> > If you change it, please just remove the bit that
> > checks for uninitialized_var.
>
> Ah! Gotcha. Thanks; I will update it.
>
> -Kees
>
> >
> > Thanks, Joe
> >
> > > > > diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
> > > > []
> > > > > @@ -4075,7 +4074,7 @@ sub process {
> > > > >                 }
> > > > >
> > > > >  # check for function declarations without arguments like "int foo()"
> > > > > -               if ($line =~ /(\b$Type\s*$Ident)\s*\(\s*\)/) {
> > > > > +               if ($line =~ /(\b$Type\s+$Ident)\s*\(\s*\)/) {
> > > >
> > > > This isn't right because $Type includes a possible trailing *
> > > > where there isn't a space between $Type and $Ident
> > >
> > > Ah, hm, that was changed in the mentioned commit:
> > >
> > > -               if ($line =~ /(\b$Type\s+$Ident)\s*\(\s*\)/) {
> > > +               if ($line =~ /(\b$Type\s*$Ident)\s*\(\s*\)/) {
> > >
> > > > e.g.:     int *bar(void);
> > > >
> > > > Other than that, fine by me...
> > >
> > > Thanks for looking it over! I'll adjust it however you'd like. :)
> > >
> >
>
> --
> Kees Cook
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006031944.9551FAA68E%40keescook.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVg24VrpPgMdfsgPa%2BWckci9XkzKUdtwhVB3ZW96uZOWw%40mail.gmail.com.
