Return-Path: <clang-built-linux+bncBCDJ7PUVRQGRBPMFVT4AKGQEKSOIIII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B87C21C947
	for <lists+clang-built-linux@lfdr.de>; Sun, 12 Jul 2020 14:31:58 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id r6sf10781075lfi.10
        for <lists+clang-built-linux@lfdr.de>; Sun, 12 Jul 2020 05:31:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594557118; cv=pass;
        d=google.com; s=arc-20160816;
        b=GzcMY5eUvzc7Dcr40aM5qHG5R8WVN9T9FAmTzBw1k7MFnf/0N76+bxAS8dAs8ZgT+Y
         tDrgZGAIVQcxY4f2usvUfQAUA99hBK6oVpDuYborFRxk7vo8jwzpODaausDn8KiNNMUU
         ny8dcY8r75jOXeg35tKF7Dj3nOCGij9dtILowOAODvdHZcPIs48pqlHZtgeJMNjArKYi
         dxUFfXp+9Qw7hvVYqZ5yKz0atvIEfkO3qcDGhWG/7UW8Hg//r54XvOMCqFO14Q0j8bRg
         Esuvy3NkaH4U13c7x0F/g/+AMBbXYJCXN7QnJpSXMpM7gjHHJ8Ta903ldQYbLfMjT8h5
         he9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=0MBC0RsLfNssVhRI2wkOEBhsCVduxs/Vr3M2kosajpk=;
        b=Jk0Q6U62G0jvFz68fiSSXRJoIYl5gYKMRX8s5nCeKHl3yS/uPfN21SE9uwTr+sYJd8
         Ae12ywWYmCcTr12ihcC2VWVZncCBqICJwBwSL4BAB+dGZTfZXiRIjuuAyTQCIoiIqfDg
         gUFxxD1+VHpW7bn19qeTMVxl2YjbHZCsGnQnzVDMA1NjUkoiMw1UQ1rw9O2tP5NWFpcR
         5Bcc1AS2LPX22mGcGibiE0Cjyz9Yukv7hnG82MKlpmAxFHTiXpWMm7xNNuPnGbO9U9Fw
         gLYWK0sB7tqk8r7K1XQuDDRPg2gcuXjPyQcoxoty57DfLo2cvKU5ydhUL5DC0GFoP+Zu
         3Lfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=4kgv=ax=stusta.de=bunk@stusta.mhn.de designates 2001:4ca0:200:3:200:5efe:8d54:4505 as permitted sender) smtp.mailfrom="SRS0=4kGv=AX=stusta.de=bunk@stusta.mhn.de";
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0MBC0RsLfNssVhRI2wkOEBhsCVduxs/Vr3M2kosajpk=;
        b=GNbuueqQQRY+xQqiW2jCisHRryWWQS+65daUSwNT1tacJfUwBK42J+NCCZypzyWzy9
         FRfIuplFp2LYjb4bWDpV7lNksNwNY6MLFoVsUzUGyM9OTFMWVK56jeOoi16rmpJ6IEus
         3vNvY2u2IyYBApEQS3DcuZVZJSaIc9a4Xi5jK8SA6U9vNu3FfyJnp6UL80ttU67Hg09u
         r7DTDH5HQChUMwfxz8tOi/7N884bAyg1wJn3id6YGVCEzSpSVH/K0C/E32W2YoJmk0ma
         1rrYmBFj+u+GaYPNEmpPWmgLyvo996WnhfSaOzemcvqaPM5yGE5Wba8tV1aeEb1euBeY
         GIFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0MBC0RsLfNssVhRI2wkOEBhsCVduxs/Vr3M2kosajpk=;
        b=dUuANWLkSfhboZlqTIJGEbKSQAF0oo2AX5KFUn5wMMHlGC2951i71jTkR/AU+lyhbF
         9p7hcPKklMSk46XpjAPQ3eWYcnB8Bqnw7X9hmbXrIBoYNKpN+UVD+O/kAVXJL6/lisZN
         CiGvzfWxUOXKYoz+WAk7ovIbOgZb/DFM9vZPsX3RHK9nM1Es32xUfXFTY6c7MXXsEJgz
         UpqfaiqoPaL6glkTEla6//p9I0pCIfVxjxm3duS36QqC78RKTUPlkLvjWcAv+DKdTwHg
         16FikFSv5V3blRkwU6Ng/kdVJ3rtN2XBOFuPD12EH1eF55FmdLSKWuJeWfr/CPc4Ydxq
         pPGw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531HzJDclmeuT9k6LOABCfzc18XRW9hiS7+EwBcV9ph0iUq3qx14
	byOJDOBP4F9fkqcQcQoi+pQ=
X-Google-Smtp-Source: ABdhPJyNQXoM8OXiWZS7fMkO+yPDEbhsc+xPKtATt60yAEE/iMgDuFtqWQFghKuj4a/tJHoRdUCyWQ==
X-Received: by 2002:a2e:3311:: with SMTP id d17mr46770599ljc.13.1594557118066;
        Sun, 12 Jul 2020 05:31:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b4e1:: with SMTP id s1ls2595633ljm.1.gmail; Sun, 12 Jul
 2020 05:31:57 -0700 (PDT)
X-Received: by 2002:a2e:91ca:: with SMTP id u10mr41700621ljg.101.1594557117455;
        Sun, 12 Jul 2020 05:31:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594557117; cv=none;
        d=google.com; s=arc-20160816;
        b=GFKvm0jPHzi2OwLwTUIRvkvjQofDytN9BsFBn0BJb+TF38mhcTzS0N8atYz3d8Qip4
         PCQIMgC9SBTccYtgWFGTwozECMmSWCKUTVOvo+l0znxSiM7BKEjDlpJeTK3hwIqKZ3w/
         qFVvrkjz8Sa6MHSX5hwrB5I4huyzQQ8iZS7xrrW89BN1BVAS2tHDVOx+suIrmsu79Vxp
         BpsMT7fIwrEuMYGUEW0QhsbGPrqWFRtXacXXmsfiZM00tRDZI87UG9sr+RHpiMCaZyBM
         DZJg5KOtzqYq6g/+p6Emf2mc/iKkmH72xC8/3IPndbV4Q95qvBxyxHbOpR4664XA7ORg
         s3KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=s3Focq7+ZWwi5iB5B7XfXsNveBDecOpMhS2SCBtFzns=;
        b=CpMhGwn2JqduxBdk5r+ncXVxhjlwNQ4pXAJGJjyGTw3FTSYatptlAXG5FDMdcSeEf2
         U2s5MTE7fxqkgTpuwH84Z8tehLni149LGnX1lAhOyYnbQdZyOrhsorXGTtPeqDgOGqeu
         PnLe3gAsK/SCi9VrsyzHSODkrpsan6OJ3FiEGPdZPIUPM4vkd+9bETm4L+vjU/vn9SBX
         6wx0k1HBQOjwbh/zdt2mNuCU4c04Zzcnb42mtrweL1uGaDBkhi0KUdbwOI8b5NieoYRg
         h9SQ/dHrGjiwsWZqBn7+7olJOjIRlzQY7+ijKsqUwLH3pVK6l0scCQwMjogGILSeQEWQ
         TOww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=4kgv=ax=stusta.de=bunk@stusta.mhn.de designates 2001:4ca0:200:3:200:5efe:8d54:4505 as permitted sender) smtp.mailfrom="SRS0=4kGv=AX=stusta.de=bunk@stusta.mhn.de";
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de. [2001:4ca0:200:3:200:5efe:8d54:4505])
        by gmr-mx.google.com with ESMTPS id o10si483876ljp.3.2020.07.12.05.31.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jul 2020 05:31:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=4kgv=ax=stusta.de=bunk@stusta.mhn.de designates 2001:4ca0:200:3:200:5efe:8d54:4505 as permitted sender) client-ip=2001:4ca0:200:3:200:5efe:8d54:4505;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 4B4R3s1S8Hz1n;
	Sun, 12 Jul 2020 14:31:52 +0200 (CEST)
Date: Sun, 12 Jul 2020 15:31:51 +0300
From: Adrian Bunk <bunk@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: alex.gaynor@gmail.com, geofft@ldpreload.com, jbaublitz@redhat.com,
	Masahiro Yamada <masahiroy@kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Josh Triplett <josh@joshtriplett.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: Linux kernel in-tree Rust support
Message-ID: <20200712123151.GB25970@localhost>
References: <CAKwvOdmuYc8rW_H4aQG4DsJzho=F+djd68fp7mzmBp3-wY--Uw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmuYc8rW_H4aQG4DsJzho=F+djd68fp7mzmBp3-wY--Uw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: bunk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=4kgv=ax=stusta.de=bunk@stusta.mhn.de designates
 2001:4ca0:200:3:200:5efe:8d54:4505 as permitted sender) smtp.mailfrom="SRS0=4kGv=AX=stusta.de=bunk@stusta.mhn.de";
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Jul 09, 2020 at 11:41:47AM -0700, Nick Desaulniers wrote:
>...
> but also a larger question of "should we do
> this?" or "how might we place limits on where this can be used?"
>...

I won't attend, but I do have a topic that should be covered:

Firefox always depends on recent Rust, which forces distributions to 
update Rust in stable releases.

As an example:
Ubuntu LTS releases upgrade to a new Rust version every 1-2 months.
Ubuntu 16.04 started with Rust 1.7.0 and is now at Rust 1.41.0.

It would not sound good to me if security updates of distribution
kernels might additionally end up using a different version of the
Rust compiler - the toolchain for the kernel should be stable.

Would Rust usage in the kernel require distributions to ship
a "Rust for Firefox" and a "Rust for the kernel"?

> Thanks,
> ~Nick Desaulniers

cu
Adrian

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200712123151.GB25970%40localhost.
