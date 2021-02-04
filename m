Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBHHN6GAAMGQE7HY2QRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 86EA431001E
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 23:35:09 +0100 (CET)
Received: by mail-qt1-x83a.google.com with SMTP id g14sf3762904qtu.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 14:35:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612478108; cv=pass;
        d=google.com; s=arc-20160816;
        b=XN7yVN5QcDQsDP0GvbyCC6d6F/dWojTJwB+E6+GPvv5PkvRJ5TjrdG7F38CUhlos+s
         ehJgau9I151cmpFQJWGWzTvijecH5cI2BCbEJhql+7BMBnSNfo76v5ARwNoxgW2tQ0gr
         dAUMEFovGSJdKRbxh8aLWe5C4A96uK74gFvOe1W2YACSlDF3VWesgC+0nUc4rgjkjH+z
         ntasW8QgLTVJ85Y35Ri6YkDxyM2+BipJUBYSWBi+7O13POnk/U3VMc4JF6JTWAQOBxr6
         KTJGL+iaa2ivfhpathE4w3ihYLbOO+Mbt94OQitHi2vZ+bS5R6yvol/dUqb2rUVf1bsI
         6EYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=xOHDAB2RfJUBv8fw92W7s1E9HsT3RYKPpxog4rTds2s=;
        b=mru3OS3KYlxwKStu4cdUP5QSDfYvGh8q1ACmZESzHNhufkZdkZ1MTSYqIc1KQpi7Wq
         hGd6PByAOv8OjBOYHvdXpw4mM0h6yP3Z7+0sZmdA/fc1AtVNL3dKEVlpeBBSUh2F6NVP
         hobcXd554uYdwNfkFds+1T/8yW/dz9oLKSHjvdKyqd1eSDuxKS23Py7aLyreWFD0Lz/y
         /Du8FcnLik5doMzk8NIMx4bJ+k1coB2+aHZ/PF3m6jllQdB8n4KLWrvgkW6i3b17EHe/
         KYklWZnZ6p5fSPDSGEkYQBIjGkwnHKoacvgoWD4I1psleaFAtJEFk+VNq4o5HIMtxX4K
         iuyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ox03cIso;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xOHDAB2RfJUBv8fw92W7s1E9HsT3RYKPpxog4rTds2s=;
        b=FxV5YqIgWCau7GJ3bxBAMRqshtI36jr/+UpqF5AM9udsaDpbHx4xSyHpD/qDxk7e6a
         kyG+ksSx655LCcZchDOX4LMTV2GQuO16uKFOSb/pEhZHDBduM92Pkkfa9o6z3sbKtmYR
         q1GwL2KMnPaxTN3AKfkB3pivRdtJa3b9+QmwTrwx1CPJVUeN/cpaqd1P+GBqo6u3J9S/
         h3qkhu4Ve5gcZcSttWEshF1NlBZg3Pj7zbc9Uos5MQTV2rsMjBVIyMgIgvaCf6SPqaHR
         PQIBkx/nwrIBxm86Vtbvi2/5LUd5/tCQg1aqOovNoa4gqAJ67eaMJo+MwlaSnojv0e2r
         0ykQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xOHDAB2RfJUBv8fw92W7s1E9HsT3RYKPpxog4rTds2s=;
        b=f8KmEyUQWbMhQEAP5u/Xh9q6KOmFUqU4GJE2q8yEQDLHbmnw3mpBcSSN6p7As/Vo9f
         THIlu1m/OmFmojhHG0cv7IbMwwc5tqOMikip9RJmVSgOLEWLzDq68fuVH8ABusoUj3ZQ
         HLMoyOWhWbviUVtpaHQEG8X14dffJiWwhWcgvHrmQjuB21IOuWFA8FGZPqdIL8FWHbgs
         v7ZAqpaDX22UhtPdEOKKWSwHv9Fk+kY8BhzcXF/0m7Cbu7/5xV0QtsRZgEHfEGX/bTaZ
         njdDSM86S1MJMP7tyVYj548wb1PaYKwDeflywryMRXlICYTWLFKCxydEK0l+OirmIdrt
         rOxg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5336BS9iVXeqQakOUZVGMVSWpNSWcBEQ+n9WZ8l6xE6EWh4C8zbG
	XC9UbFjs370ga0naiLKPzbU=
X-Google-Smtp-Source: ABdhPJwqdMBUodVCiBz7PSgOLzEG1nVxboEgwqGas/1C9q9sIfiu32Ut4OecgAP316yyHMneNI62NQ==
X-Received: by 2002:ae9:e883:: with SMTP id a125mr1442321qkg.431.1612478108654;
        Thu, 04 Feb 2021 14:35:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:12cc:: with SMTP id e12ls3806275qkl.10.gmail; Thu,
 04 Feb 2021 14:35:08 -0800 (PST)
X-Received: by 2002:a37:bc8:: with SMTP id 191mr1512148qkl.384.1612478108336;
        Thu, 04 Feb 2021 14:35:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612478108; cv=none;
        d=google.com; s=arc-20160816;
        b=XM5jP9fMSg36yqsiGrzP16qgBV8zkq/Ix2y+XyRTwlf6sxfhQwroWmILH75m85SwTA
         17wAyrxINsW8Rah17FtusyrP6cFrSuEsVyBO6N026mSlgle4stDuJaC+DFxCnJbxWvt9
         cCfWBMGmmHj0FpUbnGwqzLD+eeGDWHcdnDQJGSVCptC+Uk+k3TXx/jRQmM3F6lEBmWck
         2ohBFJ592ZpzvfBRqGqBnekpJCiqxtOPvmupK5WJh0pKOm7WXQQIKwBAvxzZH6Fc5z/Y
         nOOjjNUB/tZRDKs+6XMWJPMZ8IpYgW7Y2JIXNWUqRWosIOe/dKDKCXGVQ7lxoqbbeuY0
         GLJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JQ/gedPV53ZijiLG5CnAphXThzY2cqA0g4v8pOzY9tk=;
        b=E+B+k87Df7/JryWnPTlc4h5xJDJYLkxH5MDNkwDY16a5FGPQRzUjMYR3zwNSjlPPQs
         I/msFiRQQL+wv3ZBR+01+uaziLVZxg/dQjLuekJUs+QedlGmjgiiLtSbZC5g74Pdj3G7
         8DR+78GwrlYHeaHGAu8KNBVWeoQ7BTteI2nSj1FiyxN+4Iak1snrA+LJpLEaTYrmLBGL
         GVx5pI36JmyV/hE5eJiXJWWATDbwQGVE61TWbhkR2ZtMjKVsseEL3885AHxIyCFTb16O
         9T1TrdyU+GlHQIPfPDNIIP4E3RDk+x2/Zm0Ij0knzAZd8LfoPpeVbtimL03fkSanGrfQ
         jSpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ox03cIso;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j40si656352qtk.2.2021.02.04.14.35.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Feb 2021 14:35:08 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 97E4464F53;
	Thu,  4 Feb 2021 22:35:06 +0000 (UTC)
Date: Thu, 4 Feb 2021 15:35:04 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sedat Dilek <sedat.dilek@gmail.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Subject: Re: =?utf-8?B?8J+SpSBQQU5JQ0tFRDogVGVz?= =?utf-8?Q?t?= report for
 kernel 5.11.0-rc6 (mainline.kernel.org-clang)
Message-ID: <20210204223504.GA428461@localhost>
References: <5877bb33-ba17-6459-410c-1c51bd193481@redhat.com>
 <CA+icZUWTia0CS5nrdGx7oE+Zj_J3oC4id6U3jpVbUgqVosoFxw@mail.gmail.com>
 <20210203220612.GA1738694@localhost>
 <CA+icZUVjeGq0UzCrJbf9qMYtR56woJ_XtFGiAzhvHnt0zEbD7A@mail.gmail.com>
 <20210204175010.GA2988776@localhost>
 <CA+icZUVV3q3Jr8HEi=LmqYucOWK8b3zOEvfGsk8Mn5FS--8bnQ@mail.gmail.com>
 <CAKwvOdmqF=wXxFgUNyjJnCPtFnMrnbnuxP2APyOLimVbBqK0JA@mail.gmail.com>
 <CANiq72kN+tpC2J4rBrtT=ANhcs6F-RTpjGPFuowW+SdFgJF6-Q@mail.gmail.com>
 <CA+icZUWPN_fjpWyQN1oW+0y0naf_iajD9TzkfyxyMmHTnaS9Nw@mail.gmail.com>
 <CAKwvOdmOKvzHOBAichsZe6HQfJ=q0j+Gp_7QkhBDAKdZE9Y3Kw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmOKvzHOBAichsZe6HQfJ=q0j+Gp_7QkhBDAKdZE9Y3Kw@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ox03cIso;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Feb 04, 2021 at 02:22:02PM -0800, Nick Desaulniers wrote:
> Moving our CKI friends to BCC, which I perhaps should have done sooner.
> 
> On Thu, Feb 4, 2021 at 1:26 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Thu, Feb 4, 2021 at 10:03 PM Miguel Ojeda
> > <miguel.ojeda.sandonis@gmail.com> wrote:
> > >
> > > On Thu, Feb 4, 2021 at 7:09 PM 'Nick Desaulniers' via Clang Built
> > > Linux <clang-built-linux@googlegroups.com> wrote:
> > > >
> > > > We can move to vger+lore. Google groups was faster to setup, but has
> > > > many downsides.  I don't have resources to pursue archiving the
> > > > existing list, and corralling the folks to set up vger and lore, but I
> > > > can point people in the right direction and would be supportive.
> > >
> > > I can submit the request like I did for Rust for Linux if you want.
> 
> If Nathan's cool with it, I would appreciate it.  I'm proud that we
> have folks that would volunteer to do so, and more than happy to owe
> more beers.  I look forward to buying those! Being cooped up for so
> long due to the pandemic has given me cabin fever.
> 

Yes, that is fine with me! We tried to submit a request for a
vger.kernel.org list once but I do not think that we got any response.
Maybe now that the project is bigger and more relevant, they will be
more responsive to our request.

Migrating off of Google Groups would be nice (although vger has its own
problems at times).

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210204223504.GA428461%40localhost.
