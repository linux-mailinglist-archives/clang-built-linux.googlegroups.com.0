Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBX4TY32QKGQERJVR3GQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 544141C5C13
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 17:44:31 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id y4sf1417485wrt.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 08:44:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588693471; cv=pass;
        d=google.com; s=arc-20160816;
        b=mu8Q3r4i52WFafa0DfxpyD0vLGZhca8adV9cwg+UJUNrGdwZYbMjGQAPbDX23Jleye
         gpgmQpGQU6CBzsH0TBp8Gr9vtttsa7g0wEaXkCjEI5EXjjwBputBvmgGRj5iLuAjs5XY
         0JdJ1ZnYy1d08XfNlGhF3IyM/szc59lRBQrPNzeQF1ezgG3tw24bwpWbIMSsrTJZygjn
         jMcdTpRC1efd8IIjpfrIBSxmMBAW2trHKpVuE5p9ZKkBsHLzvkumkI6b3fzZPMSm2olo
         Q2No9F5Slh7T4LLGEb7WWIzpqx47ANc9J2EUMBV737K6BFFC01XhNiMdN7rdf6TTOsof
         OykA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=ljDDstBahewb1/uynlJqF5kSOumT6m8FIkoUGqh1pi4=;
        b=jYU2KdWIgTdetrkR/K0B76VVq2mT0J/ux8/D1ZKpzDP4DwGszngDqbKQthU487oD5H
         shkLIyovH5CdUghrAlBTNa1Qm/zeREg3ZdK/MYjtIPDbrTTxr5dEoB9Bsoi9RQhS5PJq
         ZEwvcIU+OnqAEnSR8BnwBhXhknIcaF6Dwf6UM7ToFqsYsUmzmtKuDi3W/Qj2vJ14yXx5
         TcokefiZIVvko7z5O1+OtYl8RPK0I62zxYoRW0iUk6OTfR2pw0gJmZkPUtdoOgh5Zqko
         PWthWz3Fn0SVmutVjkJGxx38HdnWIWb8rRPIDSpZFn3ry3jLVwRG/hv0OpBD+0gL2QCU
         sadA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ljDDstBahewb1/uynlJqF5kSOumT6m8FIkoUGqh1pi4=;
        b=QtL6QXIYGNhozpbFlmttJxfNiPq7lFpY3mW042E+fPW7BTWBDtS7HXHr8aKpQx3Qu8
         6QpQFz51+EF8CcgsUzDWyNbCLFWPp90QvPUMMQOzeDFDGBefOJ1AtNlBF52GCs6GcQGg
         FETt6UNi01rHS0B+z52kwtnoGN8HZBdMnI+gtHYWvP0AmOz+SCJ3zeyaiJbOc48StZ5F
         EZQ5p1ZVnIF4bAPxs3fi9oV96T+VGsLR8bKxcpjS3JQhGAA9yGes2aGtVoW3crbl/Ykh
         FngsBFqmnADIFx4dy/AW5wkQ5xYuYh7ik3bqFnQkyDgHG95976iGZih9HGcxdvtHVoxh
         4lkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ljDDstBahewb1/uynlJqF5kSOumT6m8FIkoUGqh1pi4=;
        b=W4lR83WHuCe17TXbCEswyD/JOOCRnVXAPingqEbkRBwpOXwnhhwp08o3FOCrnsBPt3
         N7rd/q5V20VsiFEowIkuz9JWAEsIzTrD6vOX3d0QTk2TxvPr/dmAR5opvG5ZHym4idwR
         Ewi+ug4qydBH0i0c3fAEsS9w+Vrq8ScAIlJu6HHgG/lpV2KJzyvjE/z5rG8MU198CtaD
         gMeRvdoFya9hpm7tMCD7ZyZKVqwD77do7nyaX3jGUZvhoB9TaNimhEIgM3YOHiAfg2vl
         mRh7Sd1CL7zOE1YUuCX/jxwBFk122iDue2a6bPIY/1RUPhkfKoDIsw7dkKx5uE7vwoWc
         9R6g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaSUQZa7Uyuk09HiHhCwykq7JALO7QLD5EaxVh22mA3ZTt0r0HL
	nJa+Dp9uFgdGzfSyezVjM1k=
X-Google-Smtp-Source: APiQypJ2xnQHyMZsndbqIizSMXSqPmFuLsN1ESNOhYZhXcaCVY2D1u2oCWhg4c6b3+OcKMFwn0/WDQ==
X-Received: by 2002:a1c:c345:: with SMTP id t66mr4221829wmf.189.1588693471073;
        Tue, 05 May 2020 08:44:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:618f:: with SMTP id j15ls4600530wru.3.gmail; Tue, 05 May
 2020 08:44:30 -0700 (PDT)
X-Received: by 2002:a5d:4ac9:: with SMTP id y9mr4705532wrs.182.1588693470637;
        Tue, 05 May 2020 08:44:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588693470; cv=none;
        d=google.com; s=arc-20160816;
        b=kkMrrr40ZE1U0fGw2vX3cHwJbeTHTxvRAKvVQysLTg5UApR9zEvS81lJPeBIC1840X
         cJ0kRlNME9EPfO/8jRvYX2rsulc/l/6UBv4oCxRCX/HbwIa+1/YmZwJQnhF7E9SiaSDH
         cJN8TLMz3b6C8l6Zw6uUXzH2yT5bH5RNiKj21YTrYwVKei5PnGlDVxuQejMLq0K/ez9B
         Qxmh6m72Yw1tE51R4WoVkBMrn5kmQhchydxKpohzDdSFeonqYWpxgkAMfDbsMU6Gg3I2
         uP6W8l4uPo7G/MUkUzNlGrLDVUUO55Z474tfrQ8BbFyB/IexWEvNjhTowkxrfiNsdGgT
         9++Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=/cDX+3+9LPUsUiJ6kxylk9QfZ3/Lmw+agF5YZJd2Sts=;
        b=WOShDSIX962Mm6I9oP3LUE8qayHj6eXokE+Veib8zfX9LEVmbdNg4nkPkr2kp5u2fL
         R6kYsgowEqrt2tCPj4ZTMc6aICeyXWmzMOI4oN1LwrRcIUisxQRLQ0e71kuKY5dKMTpC
         bT36sUcmcSO+TLrXckLyVZVjB7jMox4DIq86rwycQRQCq8uFVmJQdPn4pN3NLcA0vRdT
         khaaTDVTOZ5CZtVoM8jHGgwreX/oAdBLxDZE73HalBxPAmdNXRMNnBLeYt3EwNoseaD7
         EC6ssNBwF1+7A4Z6Vkyec8EapO6UTQ/+n0h3n5CEffYk5MuUIK4Uq/r6NIdkFz02suR9
         gJKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.75])
        by gmr-mx.google.com with ESMTPS id u23si242120wmn.0.2020.05.05.08.44.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 08:44:30 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.75;
Received: from mail-qt1-f178.google.com ([209.85.160.178]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1Mo6zF-1ilykf05uN-00pgkP for <clang-built-linux@googlegroups.com>; Tue, 05
 May 2020 17:44:30 +0200
Received: by mail-qt1-f178.google.com with SMTP id s30so2336671qth.2
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 08:44:29 -0700 (PDT)
X-Received: by 2002:ac8:2bce:: with SMTP id n14mr3338921qtn.18.1588693468940;
 Tue, 05 May 2020 08:44:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200505135513.65265-1-arnd@arndb.de> <CAHp75VfmvXotH+NRt_YnNQW8O38Gas+ZfLH00jfhytM8w7ka3w@mail.gmail.com>
 <CAK8P3a2pXZGbFvXpD5D4trGjxaie_NYi4hhUyYmKmv9A_HfRdA@mail.gmail.com> <CAKwvOd=6jdRedjhcuQ0Bsr5hJ9djp8xLpLmT-bC9Wd-1GYK1fw@mail.gmail.com>
In-Reply-To: <CAKwvOd=6jdRedjhcuQ0Bsr5hJ9djp8xLpLmT-bC9Wd-1GYK1fw@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 5 May 2020 17:44:12 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3khvHTf2qALrGQoh5iunHkWOqPXSt1A1_7sO7m2JxMVg@mail.gmail.com>
Message-ID: <CAK8P3a3khvHTf2qALrGQoh5iunHkWOqPXSt1A1_7sO7m2JxMVg@mail.gmail.com>
Subject: Re: [PATCH] bitops: avoid clang shift-count-overflow warnings
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Christian Brauner <christian.brauner@ubuntu.com>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:ArdPflaymdyx20P+cy7sG3QxdhiP13FMS7XN8dJH6YbXbIcMrH7
 GJcLck/kvRxV2JWU1ld8ov60eFPeJ3SK/wAA2ltGUV6J+oYzq42YPO5F2N5P6S6AcLZu1Mk
 oG6LX4B0YUh5TR2pzaekt21X5zi/hPKIWqhEpEF0Hitu7HjKs6T3eq7FERnaXsC325ATuMb
 RYHaVfrsdohni850kIFLw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:d55rqBI8hiE=:r8S9wbRJlxg8r9PH/Onv5r
 46TM+atkdOi8fr+tVf5Y2MHDlqUjxnI9JABLrZDQxhDgR2o8NKQTRxJqOSBrBh8SgHh4NHcNX
 aFOeDCCnJ2c4LVolaEGQMHkJ6F7+6ie0w5jaDa0HhMiP2gENHZUelNNdEoujCvky88K5wobd8
 0B+jmXedUeb6LaQ1X8cf2t/0QiRq6tHn5TJ4OkErIaxG0HpxYiAgoj+iaT914Tni82wLg35K+
 q+4nhn7qw+9ZSrgk0qRK2wjF6OaEHPAFkT6jYsA3l66bwPIetYxp5aLF31PdtBdAFE5duzm1s
 mqwuhj1VxAMflwOdLQQw56V3oG3d+2htGiXf8O2ozx4RYo7Pcmp39MgSRJLKu13DzIxHWAbE2
 h3PeU0BdbninOI/CrBcARhH1Ls1f7GKsgwhESx2/mNz8e/fOS9mXcp7XxhjtuS8LWV8Yg1QVx
 BhUcoY/h8FgeFaocnWdroHV0QMHxxTCQU/eXTDx00E42eBqSAx/tRkDPXaSYYR6vlvx0tjAiB
 pAiWihUvh5TfedneroMd78zq5IWC4fI7NId8WuHyPU3HeaU/286Po2C3SbRceJvg1wUR7Sftl
 QoakP6YBlXXwCSS5Rle+OTVIJfFYxvAXrzcL7Xu/e6cFKy9d2UZ3ZY37eLy7+VSKlAd49fioM
 a3KJG5+CzcMkp+RYtTzo4EyHZLw50G8i873+DBbYet8iEPwqQET53o0Ti3aUSn+QrQpy4q5jh
 eff7N6tGiHo3OVgCdW67CpjQdMqoCpnxNQbB4w2/+19dRf2cjyXwo8pICEu5U3enU6U6bgMcG
 takry9HrNtWHdFVNYrJF0HHNyFHoJ2g7/guZJpvPbppU7wv32Q=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.75 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Tue, May 5, 2020 at 5:36 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
> On Tue, May 5, 2020 at 8:33 AM Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > I'm not sure if there is anything to be done about it in clang, since it
> > always does syntactic analysis before dead-code elimination by design.
>
> That's pretty much it.  We had a patch to Clang to use delayed
> diagnostics to delay emitting the warning in case the AST node was
> dropped, but it wasn't accepted in code review.
>
> >
> > It is a bit odd though that it only prints the warning sometimes, but
>
> Sometimes?

Well, the file is included everywhere in the kernel, but we normally
don't get the
warning at all. However, I sometimes make incorrect changes to one file that
cause some other warning, and the result is an stream of warnings about
things like this one that are normally hidden. The shift count warning is the
one that shows up the most. I should try to come up with a better way to
reproduce it.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3khvHTf2qALrGQoh5iunHkWOqPXSt1A1_7sO7m2JxMVg%40mail.gmail.com.
