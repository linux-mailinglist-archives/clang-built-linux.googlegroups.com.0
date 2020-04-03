Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBPPPT32AKGQEDVMJSKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 7253919E10B
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Apr 2020 00:25:02 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id 84sf10222272ybz.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Apr 2020 15:25:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585952701; cv=pass;
        d=google.com; s=arc-20160816;
        b=KoR9MUkonMrkjPNujKz2X4IxJU52jNyE5j35wjLmXhbcxSD3i88IEQOr6vF85hAc1F
         yiHifha4rKXqmhfdZqpvEKluJSr6An63gtsKQ/hIIAKxY7OxZZszlsI1PJXIc4eCNj0i
         wsJvmBrtZYr9Rejn0i6Hcfutup8FKySE/R9XeOpV7xsQKKPAtwNYYcxaJI3NRp4tMYqc
         yIu+g1OdDEoxjeWx0ebM+KWbRQ7/oOce0bfjXre4PcaCb41TTkf9D/GJ2PP9tQNHkbu5
         KCxr39yDZAEHOpdJRJURNDiOlINw51HCBk87EI4TFTwa2Xo++tloFdWEkYJeKqVCnnFJ
         owbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=j3kWdoTfsVpIBbPVl2ApxULWqI9Dq0sRdxwl56Frwvc=;
        b=bACnfYuZ++aL6/mUtKQhn+DEtHStp4aLwTQ/PexF0i6A0GSjs4ZV0jeIxBwgxMV8JF
         4SH1JYVCMP7ZdCQ9PsBeoHfTwxgHBuX4sXDZTZMzt4noxWWpCHJoT23S66jEiSF2qdYk
         9I0LQD3U/G223tlXkAl/8NNTPuAe5RB/gTRXBYD3KaocsGO+1iQ8ZdMrBeEQH/uDgzeY
         pm0HwCEK4WqXV0Zd5DC87luonwo3IvFwYnUiiRDIfZxu5MyAcIbJWhQ41x2x6IJxv0qF
         5g3QaVz5jSq+onfwvKqNOGUjM3sID1+MckjW7Ft5Z5YfVzB32gn8GiU/I8s1QkOksJt0
         QVYQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BWV9P3Pn;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=j3kWdoTfsVpIBbPVl2ApxULWqI9Dq0sRdxwl56Frwvc=;
        b=Mvlg8L90VE/ovxWqRGrVwCcI6ktvGvn60Zc6sx7ecGrnjwcT6DZgF1rDVTcIP1qZ8e
         BW9iQyMsrC7KkOgIiLnlR/zqNRSn9eS+l2DvPywbV+F6r/wWH0t9mr3jE/nFStbAGB51
         rNybXzEWbV/npie8mu3yRIcVHo9NuNDAWBMukVm1szxUvXONQFkI+kcmsP13Qe4qwCB3
         X0rEHOQck4qwwmlL+t9k0Rya1zkpPE0SL2hc+ZiEgl1hg0mwQ92bflyWZ/WbMWDuauo6
         vxXfOPoT3VViDzjc+YSLpVm9wXdS7UUmQThqkHarnbHL010pRAt6dsEht5JUiIy54Ji7
         N+7Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=j3kWdoTfsVpIBbPVl2ApxULWqI9Dq0sRdxwl56Frwvc=;
        b=eQywXvYngOyGbrlRfHSm2ZTLQCYowTCZupgDFlP7QCR+5G3uhSLchRvordwmzeOcVY
         /jv0dmLHN9FHDlKQXY/lgWJDlcPe/DI50YP4LiQd9pRyFJbQUzR1+/szbFO4hznVos9C
         9drC86l1oaAlTAu4PcbJo/qeJAJXjN3AF+466a+suA9aKZXt0+EmzXbgVQ65uBHKdqLa
         Yc6q6wKu8Yun3bdvLnlBdLCU7nBBhW9nejjg6Qac1GJdWsryk+fymDa54tdjEikgBG1v
         LorI+mQNxxKl8cBWXe/awh/HtZpeW9e4pDIK6HekkSOvNejYDhzcnofIwv9yg+BqCu8L
         mJ6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=j3kWdoTfsVpIBbPVl2ApxULWqI9Dq0sRdxwl56Frwvc=;
        b=nfEqO0hLNRHLakHD89lpP1SzpB4EuiDz0WC2DlmZdvCZnXkjOFFnQvd/+qLQzv8N1a
         fqHsmkHT1lTzmfnUwZm5+3z35UTXsvXWSBCLoMN2AVxKwHeP+w5vKHIiMgoxiOigJr8L
         qtHwC6vSZKiiOCAp9ftf50hacyAJUxVQ4Ym2lphCGddlhLV96qeQS50Kqt0wo/VXQzoU
         QvrPG4ve/WAERDLyQCzzVd9Hoq/EJClzjrSWD8UrZkndSaHZLI5tonkxg3cPzClYn76r
         DgXfZ++GE9b95KJG7lZRjpXntRh9iK9p+y48E1rWltDdqU0SsnD+e8ryukoJ9OCgCtuC
         tX0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pub3LE4o/vHZBnUdLG3hB5+aDvN7V6sPgqqm4vKvAkGBXuvLNQ4U
	yr5esUP+qMaSxEKpkWdoQ0k=
X-Google-Smtp-Source: APiQypLqRUVVVLgxFW+sSS05ACzG/Zk+06kAG9W3ksIARiJaQeypI67vbp0HmP7/MHBUJET8nt19LQ==
X-Received: by 2002:a25:df90:: with SMTP id w138mr18456171ybg.296.1585952701449;
        Fri, 03 Apr 2020 15:25:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:3410:: with SMTP id b16ls1810890yba.6.gmail; Fri, 03 Apr
 2020 15:25:01 -0700 (PDT)
X-Received: by 2002:a25:3d47:: with SMTP id k68mr19650594yba.376.1585952701097;
        Fri, 03 Apr 2020 15:25:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585952701; cv=none;
        d=google.com; s=arc-20160816;
        b=Fe9OKfjOgLMGRFn8clexGRrm4rFgc5FqDOlk6USdvBfzV+EX3mll/muTDbGgXfbSHm
         /HBru+KtvNVqaCi/IIymIjrxCJZ0ZRJNZRpHrBClzgXU3FoF49q8AGlSaxp2MdRnezzn
         GwTGYHl8eQ8errF19L5O/QTyb2Mpux0vY7UWJUycZl06TxeudLZsm/UEgzNonywNAjZL
         +wzr28jHOoK0J4MwYYmP7OCkPoXTQwhvVO7NEGRFURcAOlopUlGHzjbIoPzyX+FIn+Uf
         6JV2bQRXnlrIMmWTpo2OvQ4w0sW6epZ/I+SN4vjTQepS6AqYwwtGCpOkQsR383bFYICA
         HsJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=p7vow1gEKBI2UbbyxyrLH2O5cwwOy+c2MDmXXEWJLcc=;
        b=iDQN0ElErcZ3ji/RGf/UbGjYEjQ+9k5fi0ok11RfmOoB2fAFfcRuaNmE9OQvqxCsSn
         +Sn3YE1CPIvOHGatDkHWUg6uiBGEO+dKUM/JaIHUgRVoGiRVqN3XhDsbtaCn74QElCZU
         vO9cgIhHpIrjP0At04Fi+Aubt4u8Nw2mxr0qBOPRilpUAhc3oz4FOQEFJKgifcObTOn8
         eYPpCp4mNVIGHzdyfh02jji5kX1dEz2eF+FbFRC128ax/e/kF3xgLt6QH/E3+6dIo0vL
         cWWOSuwc8D/jXt0cfr5VJbdZDEdLxZUQgeGxPgv+w1tlnzQ35XEir/8VHuc8dx6PSzvo
         IbUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BWV9P3Pn;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id l141si736948ybl.3.2020.04.03.15.25.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Apr 2020 15:25:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id e4so7562507oig.9
        for <clang-built-linux@googlegroups.com>; Fri, 03 Apr 2020 15:25:01 -0700 (PDT)
X-Received: by 2002:aca:4c57:: with SMTP id z84mr4817143oia.53.1585952700642;
        Fri, 03 Apr 2020 15:25:00 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id k132sm2547380oih.9.2020.04.03.15.24.59
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 03 Apr 2020 15:25:00 -0700 (PDT)
Date: Fri, 3 Apr 2020 15:24:58 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Ilie Halip <ilie.halip@gmail.com>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] elfnote: mark all .note sections SHF_ALLOC
Message-ID: <20200403222458.GA49554@ubuntu-m2-xlarge-x86>
References: <20200325231250.99205-1-ndesaulniers@google.com>
 <CAKwvOdm8tQaa6BW7EQAz4TxFZETnJCS3z9isY4HvcU7UYqWZUA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdm8tQaa6BW7EQAz4TxFZETnJCS3z9isY4HvcU7UYqWZUA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=BWV9P3Pn;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Apr 03, 2020 at 03:13:34PM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> dropping Jeremy; I got bounceback from the email address. Ping for review?
> 
> On Wed, Mar 25, 2020 at 4:13 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > ELFNOTE_START allows callers to specify flags for .pushsection assembler
> > directives.  All callsites but ELF_NOTE use "a" for SHF_ALLOC. For
> > vdso's that explicitly use ELF_NOTE_START and BUILD_SALT, the same
> > section is specified twice after preprocessing, once with "a" flag, once
> > without. Example:
> >
> > .pushsection .note.Linux, "a", @note ;
> > .pushsection .note.Linux, "", @note ;
> >
> > While GNU as allows this ordering, it warns for the opposite ordering,
> > making these directives position dependent. We'd prefer not to precisely
> > match this behavior in Clang's integrated assembler.  Instead, the non
> > __ASSEMBLY__ definition of ELF_NOTE uses
> > __attribute__((section(".note.Linux"))) which is created with SHF_ALLOC,
> > so let's make the __ASSEMBLY__ definition of ELF_NOTE consistent with C
> > and just always use "a" flag.
> >
> > This allows Clang to assemble a working mainline (5.6) kernel via:
> > $ make CC=clang AS=clang
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/913
> > Cc: Jeremy Fitzhardinge <jeremy@xensource.com>
> > Debugged-by: Ilie Halip <ilie.halip@gmail.com>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> > ---
> > Ilie has further treewide cleanups:
> > https://github.com/ihalip/linux/commits/elfnote
> > This patch is the simplest to move us forwards.
> >
> >  include/linux/elfnote.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/include/linux/elfnote.h b/include/linux/elfnote.h
> > index 594d4e78654f..69b136e4dd2b 100644
> > --- a/include/linux/elfnote.h
> > +++ b/include/linux/elfnote.h
> > @@ -54,7 +54,7 @@
> >  .popsection                            ;
> >
> >  #define ELFNOTE(name, type, desc)              \
> > -       ELFNOTE_START(name, type, "")           \
> > +       ELFNOTE_START(name, type, "a")          \
> >                 desc                    ;       \
> >         ELFNOTE_END
> >
> > --
> > 2.26.0.rc2.310.g2932bb562d-goog
> >
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers
 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200403222458.GA49554%40ubuntu-m2-xlarge-x86.
