Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBOF26TXQKGQEHFKSUNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F6812829F
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Dec 2019 20:12:57 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id z13sf5120789otp.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Dec 2019 11:12:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576869176; cv=pass;
        d=google.com; s=arc-20160816;
        b=L6AtfANWLpqHI1lRkWwepcMbOt02mQ3A5+95bA6Zw8sz1gI3BqOTT7VqQ9GQVKjAYZ
         kcmkF1yxO/RWReLPoFdJD4BTy+s6yd20+ecS/C5WWU2fonLlomff0IauFUnnBHRM5e/q
         3yiB5zvCnFuujQAml87lN6eZU8EohRNJpi/6ok9nqXTIvPbEz+kem0Q/vchKbnRO4hs7
         UldBYZJMQPpRq6dRGUGM1WSQsaZdHwxVX8BEOaVVLMS47XPkJ8eN2bi8nRZ4yPLlmJak
         SzLxWsECVlpyVujtNGgiN2mwiKuy7AElIFIy4clbrqDPEDWqKJbETJKFAt8kPPF3ABlj
         2XDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=vM38kgLtk1qRD2Rz9l5AbgutYAtrL0/JNWaE8lZB+Ek=;
        b=eH/+10+lVl0dBpazVlx2F4HSFGerAPeF54V6b41Rn8g3WHW8HZfNQeb6u6c51k18Mh
         xqzytBsIlTuzt/k1j2u2V7QtSWipTJ1XnzwnWTvbs8Ko52WmijbVeY7mQqqk6Qddl6Kc
         itfxU0VjODi7Ui4QwKxstKpDVtx7qp0m8Z4jOFIl8g7aiy8HjjI3hZe7ateCp1rwAuFC
         PRc/U4dg9aPEqACN1l64koQUKaPfJCzUmWqd83F7EKa2sTt+yYxWRu0Obmj3QFj2Br4C
         wyoahMHCKEAkXEl1QW421yrY8klNrdFf6OZHGL8Oc52wkr5aaX2U4qNFPFM+xst/lEoU
         8gfQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Pbqu7Uup;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vM38kgLtk1qRD2Rz9l5AbgutYAtrL0/JNWaE8lZB+Ek=;
        b=YtopYOWUcXK0Zsa0j7vYL+QlMeO0MHmSFe4U6kfuqpPcosrVXHEc4/hrYFfkDk9EbK
         AhI6B8Ot855EnBbc4Ayp3F5wxOW3utMu0N5TPcF0WyJVK+7MhdvYs9uPpfsqIrn5WRYq
         wjKO1/2ULsxrx0q/pZr+3fjSeDaPagAyiKenQ1xflMTsX0uq5ObkTVT0x+JHHLwqrDXI
         PsKswqIBO+9y0qkEpHxjsw3TJr4Jj3HMqaDFl8BCjDoYrTCMtg2Y6jE2acblxvdk60/n
         sVDVJfdIao0/qj34moA2pyGtXHSaKPmWOkJ0ewHZvZJM1qxg1YwI/7lVgWUNsEhRn4VL
         nL1Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vM38kgLtk1qRD2Rz9l5AbgutYAtrL0/JNWaE8lZB+Ek=;
        b=L6X/Mn6lC4LwiI9GdeGiIJodWAgDuY2dZCmyZZzN5esnuSMZWcXVjqOcXRWnR/SdXO
         N0/1TMArFXizJEoPOLMOkC76vIPo/0F8/FFcsq62NR5OKiDYNFj0u/L46G2Z1hWDsaMY
         29/1PWX11M+FXNq1g6sHTkxxj9c1ThyumwD1NJEyJp1P6TG7T0Iwo9TXEZfp7AknCCD3
         bDpRTuH53wKxn4G2ZghhVdy4ne4W22xeB13I9c4WP12ZRYR+VKl9A7U96HTqkA8QYVvr
         onG6CeeV5EsrgKetnw1gvk7vwVEPESQP2Q/5wkjofAkQ5X7gvZEU/RT07uBrC9OC1kz9
         YliA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vM38kgLtk1qRD2Rz9l5AbgutYAtrL0/JNWaE8lZB+Ek=;
        b=BfRIKN2O2DzHAoBimJN6jVq+wQMZi4VRKDnQGFvBc89/fqWfGfxWq9zdI1lofYiPE5
         PgCv76tDFD8+LPrhSlM8m1/s6TPekrzi2tCHWuE12br+b7TqS9fVzmthzhl0lrFA//Lq
         ISdEw4LxYhZZWiKz9Q3ax66SVWew4GSbleifVtugSIV038UhKtvrS7BxMylraIS+zTtt
         BYoXLRZ0X2QpAk/rSEFrO6yHuj3Gwmz2Ka0siNd5vfFXR3MvU644MfDx/kT7lzYgvADD
         coeLKhY23uge75nyZG6OdULpzGt4OD/I9TIlqszXvKSSsItXD2JlehxekBT0skRpP5ZN
         sukg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWglple5uiDo6cCcReG3GfFtkHVXaQZ8N4Bnf9waPsKvmsG9yMz
	QgLlgTkocMs3nDUTI52B7KM=
X-Google-Smtp-Source: APXvYqya/QxBUn6z80L2z6T5tFdmbwZwIlywHqkQjBZr3hTYYtFhJNBrGOb2EndxgVI/cXk4Mf1CCA==
X-Received: by 2002:aca:d4c1:: with SMTP id l184mr4668603oig.172.1576869176146;
        Fri, 20 Dec 2019 11:12:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d615:: with SMTP id n21ls624485oig.5.gmail; Fri, 20 Dec
 2019 11:12:55 -0800 (PST)
X-Received: by 2002:a05:6808:5d0:: with SMTP id d16mr4695741oij.45.1576869175773;
        Fri, 20 Dec 2019 11:12:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576869175; cv=none;
        d=google.com; s=arc-20160816;
        b=0vojnnaC4srwj4dPw7zMACnlHDQMxKZF6KcJAYqxb4WzJxH6RV81bgSPh8JM//yeId
         lWVNu1DU65Vf55miwn+Tx7rhcbgv/VxAy/QEVUbHnvFPSE9sSGpq1ha1jav/WFYRrvvF
         5x42GYWQC1anpWoBgIsOIGA7UZkUs74aHl/jBLBsJgrpSy3FbEKqoEovKuKiC4bUwS7f
         UhT1Er0DQKu7DXGsRGg9EVedfAemKHR9TN3fmZ3mxQF3Kh5fQ5O5Jb9agcXzxCDVsqpZ
         uq0F/G06eYzSJWyWqwJM52PucQqIt9szX8osbCkUUNHvu2YN6hRY/AYC5BUmFLnN1ZHl
         11QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=AQWMjzoLCchFmkZQ8yhMwAYAhwyzEvr1a64rPKNFxB4=;
        b=k7bWAfrtd1tefc/7PexBYrMAEBD54ljBXg4SbGS6S7QmBGivQFeSudWGWyj0zHL8wM
         lnjPDfHkPqOXY4UPjJaqSli3Nk48RkQxXa/NOiHDGSMCIEPMNG3cYEr1HoKAZHuiuggS
         CpaCQSu6Q4ekROhDkEAiqljibyGto0mH3PuMxr5KapooQM4c93mpbYwhvw/TgEHHZrdp
         uR/wff2ky/51+ARNlARmRKe4l5KCi5eNuwHkgHNIphgZcGNgzL9sYk41Vn2h+N+K49ku
         B+V8qO54DHRzgP8vmoMP93rFOLoHow80hMTTb378Q+y2NUDgUeXsD4QLOCsXJNA9rdFc
         9M2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Pbqu7Uup;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id w63si412326oif.2.2019.12.20.11.12.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2019 11:12:55 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id k14so13047500otn.4
        for <clang-built-linux@googlegroups.com>; Fri, 20 Dec 2019 11:12:55 -0800 (PST)
X-Received: by 2002:a05:6830:11d2:: with SMTP id v18mr408027otq.151.1576869175365;
        Fri, 20 Dec 2019 11:12:55 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id r23sm3476683oij.38.2019.12.20.11.12.54
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 20 Dec 2019 11:12:54 -0800 (PST)
Date: Fri, 20 Dec 2019 12:12:52 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jslaby@suse.com>, LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] tty: synclink: Adjust indentation and style in several
 functions
Message-ID: <20191220191252.GA48729@ubuntu-m2-xlarge-x86>
References: <20191218022758.53697-1-natechancellor@gmail.com>
 <CAKwvOdnOYUy7M0upKsknwPJOa6iYwtaqZAafrxdb4z_=vDmuXw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnOYUy7M0upKsknwPJOa6iYwtaqZAafrxdb4z_=vDmuXw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Pbqu7Uup;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Dec 20, 2019 at 10:04:02AM -0800, Nick Desaulniers wrote:
> On Tue, Dec 17, 2019 at 6:28 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > Clang warns:
> >
> > ../drivers/tty/synclink.c:1167:3: warning: misleading indentation;
> > statement is not part of the previous 'if' [-Wmisleading-indentation]
> >         if ( (status & RXSTATUS_ABORT_RECEIVED) &&
> >         ^
> > ../drivers/tty/synclink.c:1163:2: note: previous statement is here
> >         if ( debug_level >= DEBUG_LEVEL_ISR )
> >         ^
> > ../drivers/tty/synclink.c:1973:3: warning: misleading indentation;
> > statement is not part of the previous 'if' [-Wmisleading-indentation]
> >         if (I_BRKINT(info->port.tty) || I_PARMRK(info->port.tty))
> >         ^
> > ../drivers/tty/synclink.c:1971:2: note: previous statement is here
> >         if (I_INPCK(info->port.tty))
> >         ^
> > ../drivers/tty/synclink.c:3229:3: warning: misleading indentation;
> > statement is not part of the previous 'else' [-Wmisleading-indentation]
> >         usc_set_serial_signals(info);
> >         ^
> > ../drivers/tty/synclink.c:3227:2: note: previous statement is here
> >         else
> >         ^
> > ../drivers/tty/synclink.c:4918:4: warning: misleading indentation;
> > statement is not part of the previous 'else' [-Wmisleading-indentation]
> >                 if ( info->params.clock_speed )
> >                 ^
> > ../drivers/tty/synclink.c:4901:3: note: previous statement is here
> >                 else
> >                 ^
> > 4 warnings generated.
> >
> > The indentation on these lines is not at all consistent, tabs and spaces
> > are mixed together. Convert to just using tabs to be consistent with the
> > Linux kernel coding style and eliminate these warnings from clang.
> >
> > Additionally, clean up some of lines touched by the indentation shift to
> > eliminate checkpatch warnings and leave this code in a better condition
> > than when it was left.
> 
> Indeed, this file is kind of a mess.
> 
> >
> > -:10: ERROR: trailing whitespace
> > -:10: ERROR: that open brace { should be on the previous line
> > -:10: ERROR: space prohibited after that open parenthesis '('
> > -:14: ERROR: space prohibited before that close parenthesis ')'
> > -:82: ERROR: trailing whitespace
> > -:87: WARNING: Block comments use a trailing */ on a separate line
> > -:88: ERROR: that open brace { should be on the previous line
> > -:88: ERROR: space prohibited after that open parenthesis '('
> > -:88: ERROR: space prohibited before that close parenthesis ')'
> > -:99: ERROR: else should follow close brace '}'
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/821
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> >  drivers/tty/synclink.c | 55 ++++++++++++++++++++----------------------
> >  1 file changed, 26 insertions(+), 29 deletions(-)
> >
> > diff --git a/drivers/tty/synclink.c b/drivers/tty/synclink.c
> > index 61dc6b4a43d0..586810defb21 100644
> > --- a/drivers/tty/synclink.c
> > +++ b/drivers/tty/synclink.c
> > @@ -1164,21 +1164,20 @@ static void mgsl_isr_receive_status( struct mgsl_struct *info )
> >                 printk("%s(%d):mgsl_isr_receive_status status=%04X\n",
> >                         __FILE__,__LINE__,status);
> >
> > -       if ( (status & RXSTATUS_ABORT_RECEIVED) &&
> > +       if ((status & RXSTATUS_ABORT_RECEIVED) &&
> >                 info->loopmode_insert_requested &&
> > -               usc_loopmode_active(info) )
> > -       {
> > +               usc_loopmode_active(info)) {
> >                 ++info->icount.rxabort;
> > -               info->loopmode_insert_requested = false;
> > -
> > -               /* clear CMR:13 to start echoing RxD to TxD */
> > +               info->loopmode_insert_requested = false;
> > +
> > +               /* clear CMR:13 to start echoing RxD to TxD */
> >                 info->cmr_value &= ~BIT13;
> > -               usc_OutReg(info, CMR, info->cmr_value);
> > -
> > +               usc_OutReg(info, CMR, info->cmr_value);
> > +
> >                 /* disable received abort irq (no longer required) */
> > -               usc_OutReg(info, RICR,
> > -                       (usc_InReg(info, RICR) & ~RXSTATUS_ABORT_RECEIVED));
> > -       }
> > +               usc_OutReg(info, RICR,
> > +                       (usc_InReg(info, RICR) & ~RXSTATUS_ABORT_RECEIVED));
> > +       }
> >
> >         if (status & (RXSTATUS_EXITED_HUNT | RXSTATUS_IDLE_RECEIVED)) {
> >                 if (status & RXSTATUS_EXITED_HUNT)
> > @@ -1970,8 +1969,8 @@ static void mgsl_change_params(struct mgsl_struct *info)
> 
> I'm surprised the next hunk isn't mgsl_isr_transmit_status() in
> L1211-L1268?  I don't mind reformatting this file, but would you mind:
> 1. splitting the changes that fix the warning and reformatting the
> rest of the file in two?  That way the warning fix is more likely to
> merge back cleanly to LTS branches with less risk of merge conflict?
> Warning fix first, then reformat.
> 2. reformat the whole thing, not just most of it.

Yes, I will go ahead and break down these three TTY commits into six
(first three fixing the Clang warnings then the next three fixing all of
the indentation and spacing warnings).

I should be able to do this tonight or tomorrow at some point.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191220191252.GA48729%40ubuntu-m2-xlarge-x86.
