Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBWWU5X4QKGQEOWDA3PY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD67247DF2
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 07:42:50 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id o10sf7790366wrs.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 22:42:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597729370; cv=pass;
        d=google.com; s=arc-20160816;
        b=zmMjHFAO2UdmfgFYjoqWy9JODE7ILPNIV/EyuhmTrpLZKgcbN6kWOPCYHbVHC23Mfl
         jg3hm9aRQQUSTqKu9ouV1p+D7ZrBlQTqv2iOnzHfSQtAZYeSwgkANDd4Cmj2W/8n/mkp
         ZyxJ4cH9yPhyVrDCw95WTaNNDnPz+8eJ/I+6d/b1w2HNeW9S9uO5eyyRqD1AujdQGZfQ
         YNJnAU7clCaK9KjIt+9nC/POfZXU9ZYcWC7JDlCpP0Wce7q18GK7BeQwt7Hple6Wojwv
         1RyXiZQA6qHgwOWVPgoUiWGQUusrRHRWOoK4ksdVJSZPlwAyJFo3MqJn5VYRfLrezvVl
         X5Mw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:date:from:sender
         :dkim-signature:dkim-signature;
        bh=ZWtoSU+s+0DrAUrjW31eBn/Avrw2oTCHYbRyTSh18RQ=;
        b=W1vHzGKoaInX3360qZpZCmMfsemZljXNpv0667e+6Y2etoq2tWt2ThRI5WeZ3e3Li4
         5lCTCHqUNRVgqoWjswxIpHjiHnx4FtN9iZqEDkrLi+CzMPpsjgDH6N6CSI4gslMorYSJ
         DHlyvkvIpd6p9XmtuixtijT/WMcIBK7Ya2GDw2mHi8MfXJo/pftzcEm/K3T4gfUn/Pvf
         OvbuJL2kMBl0vlLOI7UjWhUVgS2HWCEvHIpWC/TR9sHSCg5Ac128+aZSw9ABszUXzzzn
         bAZEIhZHKMERte6O4GbOgJvtBdEKyXsWSM25s57fBnOVwyHZ/UdZDkWl0YID8iIhVcRY
         mrcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QECQCTva;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::643 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZWtoSU+s+0DrAUrjW31eBn/Avrw2oTCHYbRyTSh18RQ=;
        b=dW0jMVJIsA3othvD83Jtedwg7WVASnAva3kSecEQiIgJoqJNphAlZCr6Lu8FdPavTq
         8H8k8VPQcmxPyaPVOrpdY6Ddb+oA+jliMrjgD5h91JXJ4q/MDrpiDg6OHb9rY5uM6MBh
         wqS7vnqFV4hmcqotiujex8KLpENUfvnqUTmtVndtnDmR0/0+/Rw5xSCZQkF7DKh/OSas
         YbUNnYsDmQ5mn6P1Xza1K3r7Qxxuy0wDbbIpLH7UoC/qF12lQOGRVjLdhVZ/dQfJh3DM
         uY7x/6nUI8mb3KOVpuw7IimsnVY0yAGd/zKODGgWXEvt8JUzVU5HCqkIXj0wN91lJEXZ
         Odgw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZWtoSU+s+0DrAUrjW31eBn/Avrw2oTCHYbRyTSh18RQ=;
        b=oiry9UB9FHsZohAz9wlq6Nij7fe1AzBTWnuSg7CBfvBtH47JhO389+mMbVSEB7gYGv
         ChMRQ+K9TudHJQ4tYQ2Zk7mSCCsRPx5pwATaetAU+F46BOXnWjCj7dShLCBBAhgcQrId
         0n+GxC71NwbKQ8ZLuq0zikQ7EJwCtAc+LgnMoJ4HJLfOqDcT1+lwoyE4Wv8UTG9QUM37
         hPwC1WZgcZyWhUdM2/MltnDJCiS4VK9+9NJdcANX78p/JJPH5QIKgzLCOXdvwwSyXxyO
         CpJ2ZtYX+fN+gaGBxoAS5WByWHcw4237wnQ/5LpG2ih6BQsYHXT3rVCj2DWf1a3FAGKG
         1EDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZWtoSU+s+0DrAUrjW31eBn/Avrw2oTCHYbRyTSh18RQ=;
        b=fPvxRdV+dXjOlF2BXOY8UzMiErEbHJUHrvzVNqkeQJjFB7ORxN3vp89TST/HK2IGF4
         u8gq6lNAVECnmU8+bgFbjiIqPCHWrSvHGqBDb6D5O8+S3jCilIN/hSxectJ+dfnG1RRu
         QdXaGWbSktd5F/AuJQ+YPH4bJScRuY1/6HGSGB6P+Bj48nmLeQwbyRjymtvafq8xOZyw
         GZnDxwtKqqC5i5vo6SYS4blvcOooeiPQGas9dKfDpolg91h60W7Qf362W8EgRVJfP0Fl
         Mo2hNrFMvV3I9txnILXFCKTV/4cSuZnR+Urb8pK7EJYILwqjdj3CjWLYmDo0m+YZiEQt
         gbsw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531udQ5LXaS0bpaRQQG2ew6kXCx8kTA7kGe8RYJotnAK0UW5Kqu0
	vG2jY2zwcq5SMCx0l6fqwjo=
X-Google-Smtp-Source: ABdhPJzhyxqTcTNxbrcMkvp2H89U9yteOTE690HhWPiE0ZiAYnHBm1eSVQwu9minCSKMoDtPdPHJDQ==
X-Received: by 2002:adf:f64f:: with SMTP id x15mr19709447wrp.180.1597729370232;
        Mon, 17 Aug 2020 22:42:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:3802:: with SMTP id f2ls542577wma.0.canary-gmail; Mon,
 17 Aug 2020 22:42:49 -0700 (PDT)
X-Received: by 2002:a1c:bc54:: with SMTP id m81mr18662372wmf.73.1597729369660;
        Mon, 17 Aug 2020 22:42:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597729369; cv=none;
        d=google.com; s=arc-20160816;
        b=ylAjm4vPQDaeIYjsNdCGz3Xs9l15WKxE1d/xNZ844R+3gxc7ElQBYaXmm1LNR+5lEO
         ZRZWMWM+krWrwXMcLl6quF3ZnM8cdb/l2GiCrfyaWwBG8g55J+QN/996q/eX/L7XjTxh
         v55HomSc99tYgsL8no1iIxO+5fR4VHb624bR3MEu/yPrCB4UnP9ku+rcVSOqBCxLHACL
         pIiLj0xMRRDho2aRYLxkZnhGeBNeskiNVR7Ksk5Ib3yV36NnNQtFMNEroxeDTqJiRLlr
         JoWaHnjIQRIucEpE34aRui1c/fHu8IX6CETyLHnaRBKRtxPokEpsJ1vhcbxE0z5d9/6j
         PYrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:date:from:dkim-signature;
        bh=sgUJUkfrBra2QDraq31dLYsZZ5gLHoAyO7owE/5BhoU=;
        b=rRrS9ryCRcGj6TxLDRaWPYTk2Upi7QTFcAbc13qCrWHMEvnsFVzfCARjXGJ2VbcmKI
         TXsL1iz/wiZqATxTU+1JQfZRYN5HWDD2n/RmumVkI9/OCYpveYnjjB1+GGXDHJKT/C62
         J/u0zZnxzLINyfCpEqx+lDeZb96AtG6oT+n7sx5/uhpx7ix+mclxTHJFBd5xYRZrES+P
         nYz3OB0GBOffyvrcKLHs1kzmFtuDGRrK/y6DdQwHIVB//jwtmhpkMKUqWmZWZjgXjNQM
         hgkahTPJTGFmcDBn1vrIWdXUjnIS7jrUtAyrE9H7A23GyybvtdpcnOwb7KkHuLO/teR/
         fhLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QECQCTva;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::643 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com. [2a00:1450:4864:20::643])
        by gmr-mx.google.com with ESMTPS id h11si800379wrc.2.2020.08.17.22.42.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 22:42:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::643 as permitted sender) client-ip=2a00:1450:4864:20::643;
Received: by mail-ej1-x643.google.com with SMTP id o18so20575426eje.7
        for <clang-built-linux@googlegroups.com>; Mon, 17 Aug 2020 22:42:49 -0700 (PDT)
X-Received: by 2002:a17:906:2c43:: with SMTP id f3mr17960097ejh.502.1597729369346;
        Mon, 17 Aug 2020 22:42:49 -0700 (PDT)
Received: from felia ([2001:16b8:2d26:1d00:1195:5cc0:5095:8b0d])
        by smtp.gmail.com with ESMTPSA id f22sm14827142edt.91.2020.08.17.22.42.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2020 22:42:48 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Tue, 18 Aug 2020 07:42:41 +0200 (CEST)
X-X-Sender: lukas@felia
To: Nick Desaulniers <ndesaulniers@google.com>, 
    Nathan Huckleberry <nhuck15@gmail.com>, 
    Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
    Will Deacon <will@kernel.org>, Geoffrey Thomas <geofft@ldpreload.com>, 
    John Baublitz <jbaublit@redhat.com>, Alex Gaynor <alex.gaynor@gmail.com>, 
    Josh Triplett <josh@joshtriplett.org>, 
    Greg KH <gregkh@linuxfoundation.org>, 
    Behan Webster <behanw@converseincode.com>, 
    Bill Wendling <morbo@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
    Nathan Chancellor <natechancellor@gmail.com>, 
    Mathieu Acher <mathieu.acher@irisa.fr>, Dan Rue <dan.rue@linaro.org>, 
    Kevin Hilman <khilman@baylibre.com>, Mark Brown <broonie@kernel.org>, 
    Guillaume Tucker <guillaume.tucker@collabora.com>, 
    Philip Li <philip.li@intel.com>, 
    Maxim Kuvyrkov <maxim.kuvyrkov@linaro.org>
Subject: Re: llvm mc - plumbers schedule live
In-Reply-To: <CAKwvOd=+taiqCpyknLOm-+kVVWEj-PxX9t5rktj_tNBaQq4iTA@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.2008180736150.6891@felia>
References: <CAKwvOd=+taiqCpyknLOm-+kVVWEj-PxX9t5rktj_tNBaQq4iTA@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=QECQCTva;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::643
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
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



On Mon, 17 Aug 2020, 'Nick Desaulniers' via Clang Built Linux wrote:

> https://linuxplumbersconf.org/event/7/timetable/?view=lpc
> 
> Starting at 7am PDT runs for four hours.  Just waiting on one more
> abstract and it should be complete.
>

On Tue, Aug 18, 2020 at 1:26 AM 'Nick Desaulniers' via Clang Built Linux 
<clang-built-linux@googlegroups.com> wrote:
>
> https://linuxplumbersconf.org/event/7/timetable/?view=lpc
>

Nick, I am looking forward to this microconference.

Just to point out some nice overlap (it is good to see multiple 
subcommunities driving with similar ideas and thoughts):

Nathan's and Miguel's talk, Clang-tidy and Clang-format, 
https://linuxplumbersconf.org/event/7/contributions/803/, mentions this 
goal for discussion:
Furthermore, we will seek feedback on how we can incorporate these tools 
into wider kernel dev/CI workflows, as well as what kinds of static 
analyses we should seek to develop in the future.

My proposal for discussion, Maintaining results from static analysis 
collaboratively?, 
https://linuxplumbersconf.org/event/7/contributions/700/, touches on a 
similar subject and coincidently, I will probably just use the 
clang-analyzer findings as a simple example for the general 
discussion around open questions and challenges to address.

Just as some insights, here is some quick first screenshots of using 
Ericsson's open-source CodeChecker to manage clang-analyzer findings in 
the kernel:

https://drive.google.com/drive/folders/1prX-mKX5zyOgX4s0eIkCysGLqNUP6v7v?usp=sharing

Nathan and Miguel, I will share more of my experiments, my demo, some 
screenshots and my structure and notes for discussion with you until end 
of the week. Maybe, we can take the discussion points from Monday directly 
and see if that is helpful for clang-tidy as well.

Maybe, we can also meet for a "virtual (coffee/beer/favorite 
beverage/snack) break" (it is five o'clock somewhere), chat and 
exchange ideas and thoughts along what you would like to set up, see 
others contribute to, etc. I am certainly supportive to contribute to our 
common goal and I would like to know what you see next to be done around 
clang-tidy and clang-format.


Best regards,

Lukas

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.21.2008180736150.6891%40felia.
