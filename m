Return-Path: <clang-built-linux+bncBCXKBPVPXAFRB7X2U32QKGQEMREZABQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-f58.google.com (mail-ej1-f58.google.com [209.85.218.58])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD051BE596
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 19:46:39 +0200 (CEST)
Received: by mail-ej1-f58.google.com with SMTP id v3sf1345232ejx.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 10:46:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588182399; cv=pass;
        d=google.com; s=arc-20160816;
        b=V7TQGL5IiHYnpDKNu1NaNRM4wTLPOpan6i2F2hKN1Mvo6xCMmnj7jWP5kh4yo8mgfi
         1Za7ipe7U+K84yjyGgDm65NKXP0QZfaT0ERp2vdSVZm5a3cZIi9ZM3aZREaWhs0et2JH
         WQqvLWuEwxBgdNAX7NIrizRaKY8JkhvyIByrPoqymSg2SUuN4cp1LwHAn9LXIY/jF6tm
         C9//YUyyCBPsNmjzYJmbyiz5ke+1x30+gHy5mbUl+4WNDvbKidrHjfHbcyuGv9ylRdPM
         DMIvYVz2zo3mhtdUGtW5jPDo4w1HSqwESsl2jDNaz1f2ScwKl3w5rSzkYEfT9Ra+TtX3
         L26A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:sender:date;
        bh=12kEH1ihL339/LEqXXu71HHzFV2mq2Ihw/DSE4cFJVE=;
        b=cMP9CrmbnlIUSLi+Ydef7wSN4KkJxT8IAdU38DK+iNbc0jfnLnfB0SUmbWuhmSnSaz
         mlmdSSGQ19Yg2LFPJfT+gcxlv3veEiZaXTR/CvL3XNHVlyn4cNvSYvEH5xt4SQ4lJXwK
         P5YMlMEyBprodo6RClJVJXj+9yaP5x5FcHT7ZZNPHawISk4tE44490j0eymP3aSgwk3l
         wDC6eu0d1mVHZcMrEi09eS3X3UhVDxvnjQY3owiWMIZPuvACOrXoYKYF1eNuOWYjCK8+
         HBsJEkukyufvKlxjiK0d9qUX1VG5adKvfqaqCNv/BCtOWEQLUhFpa2nOYyteaGVmkTBV
         UCEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:sender:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=12kEH1ihL339/LEqXXu71HHzFV2mq2Ihw/DSE4cFJVE=;
        b=tVL8zWs++n5UiTDQ6bRjheb1P1fwp+V5znyRFp/AaJyQmMt0W6M57ljn+C7Gt5++65
         UlWGYa8HdV5JGQXfhR36fIG1B9xGkybHqkSqNlbKDT6+d+7U6ua2EFYbb+8ZIipLu60j
         u5txCrVMAFbsmbGFwC15qXBZTzeiF5xMH4A7fmsNkFXQmt9jOWpnnXv5i/dmPN1w8ksL
         jCHD70NVA1kJuUfBVJJjP1wE8/XgLYGPN9s+1Wt3gvgLTN7rEHdzBjOdVnm6AUpPJdC2
         UPu45TqwIbtP8gxzR9+xaXQPIaa1dYKTpLG343YF/XtcnMh2KgTSBYpIsVLKY95uFegs
         /+rA==
X-Gm-Message-State: AGi0PubBviSBMPLPFdXUJPN5f0wFNO5dcTYZSJEtjQhYL3dWmos34zuv
	hl5Fhis7lEptec2SvYw60C8=
X-Google-Smtp-Source: APiQypJd2dT1hLKDWrgzZRzpLKkvVjAHL0fLaghgs3wcHIG4dc/g2hiyjCRsHjF4fSj8YMdE7VKD7Q==
X-Received: by 2002:a05:6402:b4c:: with SMTP id bx12mr3680412edb.247.1588182399085;
        Wed, 29 Apr 2020 10:46:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:bc54:: with SMTP id s20ls101674ejv.4.gmail; Wed, 29
 Apr 2020 10:46:38 -0700 (PDT)
X-Received: by 2002:a17:906:a418:: with SMTP id l24mr3766276ejz.362.1588182398525;
        Wed, 29 Apr 2020 10:46:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588182398; cv=none;
        d=google.com; s=arc-20160816;
        b=tttRSGCuUuXQZwj/xK/va/adYzHatlhvce/PyylBiXucwsrELF49+TR8ZLHGQH9yzo
         icNqyyjLHt1mIMvAauBj6GRgIBpWrwVt/D/nyYN/t11cxmDYvLGE/nL+QobgBna/Z1Gw
         N3DOCC5MY9oqiN0dsFCSj8dUQTh/7xXi8Lhg/jty+gQo4lAwD+WW5YXsULzXs9Gr+75U
         71FWiblBWK7gOtOJEFnNYLjElHbmeQaQaEo06x/qFvuELN+oJdwWf9hCu3nkZrULzYhi
         eBXH3LR04MxZI++zoTG7OrVkWaAYL9mqOTDu/DWYKiicDboN2w+94wjKL1WMJGZpHiQR
         d7Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :sender:date;
        bh=w1fPQoHS7uskzZqSba/TJQGUrebNkQsB7IBWcN5Qquw=;
        b=ncMDa7/xi4nZt6DLi1R9TtXFEhQ3MaLBh4A/R+rONIQAVpLbjLxJE5rPBWI1UfXAN7
         XPPol0SCKe+X1FvGcJUhh2KdRyuNIl/Up5c7dmaXTyKanL35dumpzMrRGSZH9NJek3fR
         xUcYtLi3oP0Z13+a0BdSME2sZXNY1l7y41BojvMLEeAkGWiyU+1ztMD8Kqp1zfyprMTb
         wYCbPnWFyfm7tIh3920QBCbFDZw82xC2SHFNRe475aM8zK/iNvYfvVEd11TAPppW31NS
         hCLtDT+dgJ0pnDYa6xmVjm8OZcVZewBqwZvEvogxbeFVbV2lCh7371PScGSQhWFpYSCL
         mHyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
Received: from cvs.linux-mips.org (eddie.linux-mips.org. [148.251.95.138])
        by gmr-mx.google.com with ESMTP id bt1si413659edb.0.2020.04.29.10.46.38
        for <clang-built-linux@googlegroups.com>;
        Wed, 29 Apr 2020 10:46:38 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) client-ip=148.251.95.138;
Received: (from localhost user: 'macro', uid#1010) by eddie.linux-mips.org
        with ESMTP id S23993827AbgD2Rqdq4Y1q (ORCPT
        <rfc822;clang-built-linux@googlegroups.com>);
        Wed, 29 Apr 2020 19:46:33 +0200
Date: Wed, 29 Apr 2020 18:46:33 +0100 (BST)
Sender: "Maciej W. Rozycki" <macro@linux-mips.org>
From: "Maciej W. Rozycki" <macro@linux-mips.org>
To: Nathan Chancellor <natechancellor@gmail.com>
cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Masahiro Yamada <masahiroy@kernel.org>,
        linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
        clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
        Nick Desaulniers <ndesaulniers@google.com>,
        Sami Tolvanen <samitolvanen@google.com>,
        Dmitry Golovin <dima@golovin.in>,
        Sedat Dilek <sedat.dilek@gmail.com>
Subject: Re: [PATCH v3 3/4] MIPS: VDSO: Use $(LD) instead of $(CC) to link
 VDSO
In-Reply-To: <20200427232406.GA8226@ubuntu-s3-xlarge-x86>
Message-ID: <alpine.LFD.2.21.2004291835400.851719@eddie.linux-mips.org>
References: <20200419202128.20571-1-natechancellor@gmail.com> <20200423171807.29713-1-natechancellor@gmail.com> <20200423171807.29713-3-natechancellor@gmail.com> <20200426162737.GA9322@alpha.franken.de> <20200427020830.GA260@Ryzen-7-3700X.localdomain>
 <alpine.LFD.2.21.2004271712130.851719@eddie.linux-mips.org> <20200427232406.GA8226@ubuntu-s3-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: macro@linux-mips.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of macro@linux-mips.org designates
 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
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

On Mon, 27 Apr 2020, Nathan Chancellor wrote:

> >  Can you actually record in the change description what the difference in 
> > the relevant link command is, as shown where `V=1' has been used with 
> > `make' invocation?
> 
> That will be rather unweildy to put in the commit message since
> currently, $(CC) + $(KBUILD_CFLAGS) is being used but I can if it is
> really desired. Otherwise, I can just put it where I put the changelog.

 Umm, is the difference so huge?  I think a note along the lines of:

"[...] This change adds/removes[*]:

<part of the command affected>

from the invocation of [...], which is required for [...]"

-- only quoting what's actually changed will be sufficient.  Reword as 
required.  Otherwise it's hard to guess now what the change actually does, 
and it will be even harder for someone who comes across it and tries to 
understand it the future, when the context might be hard to reproduce.

[*] Delete as appropriate.

  Maciej

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.LFD.2.21.2004291835400.851719%40eddie.linux-mips.org.
