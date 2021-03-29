Return-Path: <clang-built-linux+bncBDYJPJO25UGBBG5XRCBQMGQEQ4BOKQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63b.google.com (mail-ej1-x63b.google.com [IPv6:2a00:1450:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0443F34D6FE
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Mar 2021 20:25:32 +0200 (CEST)
Received: by mail-ej1-x63b.google.com with SMTP id bg7sf6208866ejb.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Mar 2021 11:25:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617042331; cv=pass;
        d=google.com; s=arc-20160816;
        b=eNIHTFbAZOP+Mh6UBlCAjkVXYFHKMx/wgybtyr2voFmXgZ0Am+XXiPZyhr+eGFWQdQ
         ruvaOck5EON6KlmuQU9mM7nN68z32HBNYvIBPtTIL+UmGB5oe92R6mDRJ1d+6HOxnee8
         PoVCvzeMAZqM3ct+cKpx5asmR0+GdYq4+K9SYlEGibLiNeIvU5lxUOLImhqAgZs6wv6G
         9DkOHfXtXut9dTrXNgVT67aRE+JYiDOJIa890QHgIr5PqUjUOHJwuinVonPCmraxT5+r
         MHluSHctw+ONCecxWLgJIwB+ehwsNr5Ei5dHTPBJet1fv2ZiF/AIiN/ZyrIypk5MC4oh
         SrqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=fPGWH/n/8vKWSKFNP4opV6Mc6+DXbtg7E817CW+b6eQ=;
        b=nFxMEC2MvT4b2ep09pWVck6E1T6Hn4MBiay8iVMpQ3G3RY9wM6t6mBSV0El2wX19N9
         cd1rFtsIWzy5nIYyq0uAJCRPdm5a5J5wSS50Qnsi97sqCv0rNDKSMLwPPXMjsvxhq5Za
         bNACr9n7vacUWHQgZllCHMirF2qLuRDY8efl8YrW7Wa9PwcoxIgGo+8Ytu/NIk4ohMUx
         6DdotTkga/mblaOXiB+u8PDLuok5PGQlDnbGvZxQ7Dbh48s0+fhJn4qhderRafgQjfp1
         PVbwKvz8RKmDBQEkJFDUYxFls3yrdcjTH0bi0+kgNtHxEEUCR3BbeB/dW4W20LLEvlp3
         DePg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fwE8UUsP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fPGWH/n/8vKWSKFNP4opV6Mc6+DXbtg7E817CW+b6eQ=;
        b=bgcqancmUhs3S6FePpGhrJimhl2lUU5rsAFu8DUHvYHbWlMdHhOO4P4wBN4yCc23Kk
         bgREMvtMSe4LbzCOAuJIgsPIMrA6L/rBvrQmbhZ4t2wdJAjCn9KXguFhkV1Z2MDH6iID
         RN3Lr4aAXNfvk41AS3Rum3nxU87EplIsZgjafzbV0iilI8+3KxHDHvUhCCp0kxjJPiIe
         /LI7OuOQXYcEo4pcuY/+ww6VWOPiwDoq+7kwODUQY5dzsELbpb0waP8FiDc+NAEv0w/Y
         6tlkRfjx8OW8RBMV2tV6/hTLwU5sMx1sFJUem8qFqrRGmpQthmIT92RAqLWLVmgCaxLy
         ViQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fPGWH/n/8vKWSKFNP4opV6Mc6+DXbtg7E817CW+b6eQ=;
        b=oWGFmmaRV4jLF0nQwVMkKWc90neH+RstUmiJzWqdv9DixfqBBxOovi2oADtXec9a1D
         lcblX2aCLh7GLMYOIT3WJRDqsLD9LylcbuTUVMfubkBFeRqiC5gADPkmnNEBWjaE2kxV
         C84bbyoTzXiBQsix/BhEkQDIID/c7rbDIyre3MRZZenwWdnuzG6xWYZcufn4MEDIoNtG
         JQR3opHaBycMZLkas2zLmamPWpJDahV3w2PwariWeUa48HZK79EW72gVq+PxaLE9/b5L
         R2G+LscO+CsJlw4VlNGf0F16X9Xpl2U8xclzWaidGwvbiAdAX64wzqXSx0MqFNIYHhDW
         Dzrw==
X-Gm-Message-State: AOAM531eD/+xAv4ZfzHP3OAVgoDFPRXTsMQK82sPOvJjqZ0gu+rNJfAN
	DdgDWFONo6Sp0nrBJ9rbkOM=
X-Google-Smtp-Source: ABdhPJxnRBGXfR//zZ7Qfc0Qix0aqfMmmxVsPP1xgivezflaDeU54BReb5jf/lkrT4dA4ZVGt0dVTw==
X-Received: by 2002:a17:906:3385:: with SMTP id v5mr29867920eja.539.1617042331772;
        Mon, 29 Mar 2021 11:25:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:c24:: with SMTP id ga36ls6756896ejc.9.gmail; Mon, 29
 Mar 2021 11:25:30 -0700 (PDT)
X-Received: by 2002:a17:906:358c:: with SMTP id o12mr30432878ejb.156.1617042330890;
        Mon, 29 Mar 2021 11:25:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617042330; cv=none;
        d=google.com; s=arc-20160816;
        b=ARFAUF22BSfyAnZxw8UfaW2cLWwJmh5626Xm2rTK661XiAcdW/t6JuUhE3Z78tHiCK
         98hv8tJggz7RU9w/g9KPVi/LDzPvSvKxWJ9jQz4tK+a2JJO9RMMepOG76J9QCmTEeGd7
         Luu0nRQnrCWaofEfh33Z6JVzjpENouaVWPNY3odcWt4U3v24TP2yvC+KG85/7gg14F/u
         KjS9PbHTDzxvad9vKFmcqKPGTh0DDUcyrAmL/QseVqxWH2SXTJNHl2/odwqRDd5ji3gV
         eYThenknyhMUztf0AT9sk59Iv2vuLh4/5ARitw1VDGdJTnQ7TNfrfbnCufHkUFcgyDJp
         SDrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2dpHV13oSemjijajiv2fnI7bbtHFM2HWjOqGuAvrI7Q=;
        b=BWOAT35jBTOEbhHVy1NRe2ouAJD0WSc1/0qv321emxwVg/KhSOUJmJXbH8iDTSAdBI
         J1NRSTfzpLcRjmk4yM8XcPDhVbMFxDbbpYSvFNh1Qi805t/s85ntYnpV+Bl1DEx528jM
         TMXEsPuu7RMl1erSFfTHsrnTK3VK7uMRiOJP6Ncb+s4+XNX0LZ04makwUDo8fhFUEaG3
         p5gCroXNoYcwkW+j3Q1srNch/Sa5wzWC4izBVsNUWq7KH42ChNNWGU98+wArev1xltXs
         OTe0hmdwe7IQW1zXscRSu+XtebWLBMwcR+it8GL/wDLIO98flRGhFfpknx04uftw7+Gu
         aFNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fwE8UUsP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com. [2a00:1450:4864:20::22a])
        by gmr-mx.google.com with ESMTPS id f25si665582edx.4.2021.03.29.11.25.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Mar 2021 11:25:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) client-ip=2a00:1450:4864:20::22a;
Received: by mail-lj1-x22a.google.com with SMTP id a1so17030784ljp.2
        for <clang-built-linux@googlegroups.com>; Mon, 29 Mar 2021 11:25:30 -0700 (PDT)
X-Received: by 2002:a2e:5716:: with SMTP id l22mr18680924ljb.244.1617042330190;
 Mon, 29 Mar 2021 11:25:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210322115531.3987555-1-arnd@kernel.org>
In-Reply-To: <20210322115531.3987555-1-arnd@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 29 Mar 2021 11:25:19 -0700
Message-ID: <CAKwvOdmNUkS0Hh_9-kvcDoK-UTUOV8hXsQx-R2o_T02fxMhFLQ@mail.gmail.com>
Subject: Re: [PATCH] lockdep: address clang -Wformat warning printing for %hd
To: Arnd Bergmann <arnd@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Will Deacon <will@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
	Arnd Bergmann <arnd@arndb.de>, Waiman Long <longman@redhat.com>, Boqun Feng <boqun.feng@gmail.com>, 
	"Steven Rostedt (VMware)" <rostedt@goodmis.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=fwE8UUsP;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Mon, Mar 22, 2021 at 4:55 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
>
> Clang doesn't like format strings that truncate a 32-bit
> value to something shorter:
>
> kernel/locking/lockdep.c:709:4: error: format specifies type 'short' but the argument has type 'int' [-Werror,-Wformat]
>
> In this case, the warning is a slightly questionable, as it could realize
> that both class->wait_type_outer and class->wait_type_inner are in fact
> 8-bit struct members, even though the result of the ?: operator becomes an
> 'int'.
>
> However, there is really no point in printing the number as a 16-bit
> 'short' rather than either an 8-bit or 32-bit number, so just change
> it to a normal %d.

Thanks for the patch!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> Fixes: de8f5e4f2dc1 ("lockdep: Introduce wait-type checks")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  kernel/locking/lockdep.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/kernel/locking/lockdep.c b/kernel/locking/lockdep.c
> index 70bf3e48eae3..bb3b0bc6ee17 100644
> --- a/kernel/locking/lockdep.c
> +++ b/kernel/locking/lockdep.c
> @@ -705,7 +705,7 @@ static void print_lock_name(struct lock_class *class)
>
>         printk(KERN_CONT " (");
>         __print_lock_name(class);
> -       printk(KERN_CONT "){%s}-{%hd:%hd}", usage,
> +       printk(KERN_CONT "){%s}-{%d:%d}", usage,
>                         class->wait_type_outer ?: class->wait_type_inner,
>                         class->wait_type_inner);
>  }
> --
> 2.29.2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmNUkS0Hh_9-kvcDoK-UTUOV8hXsQx-R2o_T02fxMhFLQ%40mail.gmail.com.
