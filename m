Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBB552Y6DQMGQE6RZ6TVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 138E33CBC79
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Jul 2021 21:26:48 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id k8-20020a05600c1c88b02901b7134fb829sf1353900wms.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Jul 2021 12:26:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626463607; cv=pass;
        d=google.com; s=arc-20160816;
        b=AdxLRQt6+lb02ObtYyFi6cB3cKXiVHmkiVRBtx9pIkSwftKYa34lqqRdx5tVKwRkLc
         EeqTijsDnUW4MRWuwlowftcxDL7aRP6MH6/Wu8vdxOauLoXMkFJsiW5h3pZMXF5Nbm1F
         JBNwl29aWhJdQGxspoIbgHBQ1ksMZu7hPU1FpdXcetnNRvJMzAi9e4judpiNJJZrmnlP
         BO40fZuWQxZQD+8irPw2evoL/fC8cJuuXAJEEoPEhp5R0BVG0m6YpmlD6+JLU/MZQsn4
         78WXIaPtGQK+mD8fUkTA9OSYuEjVI8xweiaqSr1L/vBCdLooqIOOi1ub2ORgcwRYHZQf
         FcuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=JrdVctPU9l1BjSw9pYaRpe7CEkeDGxHN+UIr4Lnpt8Y=;
        b=h42I6oqJOkBvMx/ZNFZbBnmHB3EqT4z6kt9HBTNwO/0lu+F/gss7CEWPGyPouomniK
         gA1eZjcTMVDOp8w2iktogEhccZVNp6zBsuIeDRZbIqQ1u6zKkyPNdXPRANSHgdp7Qp0M
         PmOXKK9xVSXFnUsvj2Cg7uIN69O8DnNsA9mMBiCtVWwz6YvPFlc5JLpI8TueD94/P1OR
         oW8laEPbgbPMXdgqltMxPgZ9h/tByQtb9jXk3RRPyDwn7Yo+kv5zIjO7aD/UZzu5HgAI
         0MrlH0aqwQPUbeXCUT/vGBnNmbUhS7oJjqTCJObp7X0ovNnGJFoGYLH26YHXwO/OksAI
         5vhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=IJ70gg+b;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JrdVctPU9l1BjSw9pYaRpe7CEkeDGxHN+UIr4Lnpt8Y=;
        b=Nf4t9KxnxJX+0LT/oiEPed2zGtQvYJRG6RNygWiyyGRZYZ7az6yyaNVJqrDl4KcMy1
         HUZgdWICd8FrRr8wHQwmSI2+KGOtqT9TQXi8GAnpana9aDnnWKXdYeKv+k+3lb28Bnc5
         Ik6VPdlbK8U/30C+fLBHnCf/RUW2yoNBQh231bomhSUZbL+SKnCwpowsWzQKk9DdR0uE
         0qJ2CdbnbWPKKuxhFXqjyiLtR545jCOiFlMEeyFUAHRzg0HP6NMSrV9JjOGeE4vPCXhL
         gYMtaNxSUV9ltE+SEznJFCUhHEJ9ud3FGoG4u0HTkzn7AvTOsR5JSgmWibHSg/gKpuhY
         L+Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JrdVctPU9l1BjSw9pYaRpe7CEkeDGxHN+UIr4Lnpt8Y=;
        b=TQbXb/bkKoDMkPiYrNhBnlAclQt2i8ZPMddHPyO7o0NKGsuTnJlf/4M6PRdRdHpwCg
         aLQIlIUkKM5PazUmepagdtOJjlZhf03eMKCWEzi2knlo3QHDuZXffw+1stQHNW0OuPlX
         rS12/xwr5FtQJg7JwvM+B6Y2aS5maSIfh1VYUYgAzKT09SLohS3nWTAl5TVUAoraIe1/
         myVzzpek7Om0htw4S0aOuAKTcD0T6SUY/tlH9Fi4kG1VGwkzRE+SGsVn9Nhmo8I3obS9
         WqOtOqy8/miTF6gJ7NME6UPkvbjoZzUidOvDXwJwPLi9ALxCsMUJvPMNZto4B92OLBYH
         P/gg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532LFAv4r3BhWUDN+Kn0j484/nC9b7y0BkMEH6N4AcbO4USByCP5
	8HJOdhgqiMnj7WZAKDmkWxc=
X-Google-Smtp-Source: ABdhPJz3kqLBavjo/R/Y3mukm3gaHZG+gFFWnJ8pyopCKzg5v8RuCTmg/PMW733UqQwHSjxB212Pgw==
X-Received: by 2002:adf:eb4c:: with SMTP id u12mr14768573wrn.111.1626463607866;
        Fri, 16 Jul 2021 12:26:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:dd86:: with SMTP id x6ls2888572wrl.1.gmail; Fri, 16 Jul
 2021 12:26:46 -0700 (PDT)
X-Received: by 2002:a5d:6482:: with SMTP id o2mr13874283wri.367.1626463606811;
        Fri, 16 Jul 2021 12:26:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626463606; cv=none;
        d=google.com; s=arc-20160816;
        b=hyTOlod19FB2eJFcAhhwKgQsvXAdd/RAuXBd1tQU0QqL6h9eahhrvpAPfX9xpObogT
         nf1qSbBh59Taaj6lMMvQeEGhG63CsGUXJBeJgMRD5Kt3JIAaUSy30kQcVau5Q1TT1oTb
         XfcOYCbDZ3eYABRPwom/XNwclIp2gRi/VojyMCUBNFnQQBsHw8g/ozdXG2ngfwhqoRPA
         0OgHC+y0GOsczLvvD34LrEk0R5NWe9nnwKDgwVJ66cqynXNozwlUHevD5cYRHxn6veRK
         ucFB9Grh9GNsMfGBvfpMIooEMMW5/hRQJ46bC1vXqcIQTFcYlmeGqokq68OIwqHVaHoh
         520A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VgJDZkLc9fmkT1eM2NCtEiKFd4AK4SPRUAi+psPgPbg=;
        b=BsY3LJ9rb+u67rI6upDRHeMzYvnJcxdRaa2XZ6uB8enttaarCHS1R3jE0r+9AUDvvJ
         W1m1Ksep3Nkld8ZIhjRYt5wPZbf8A3Bl9ivjtNLn+H95DhzPXsvgnCl+5AvKFgEaTciR
         TjcKsj6lVDl1y/079ul91qSZU3yCaEsaTg+GLNzkqySOwnF346DC7yXhMV/hQGN3G8Zr
         v26TQC7uKIz6b2k9jXVh6ZwPWCVmifDSFwVtppgWfg6wdk5qaKMhaKh3AfP6R0IMxpH5
         vRN3mtQI2PIj3DQ9aB251qM0AZnA9RDAvqQlq9i7dKRj5HFLMYJ0jh7dXDWTk1CfENBo
         aOxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=IJ70gg+b;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com. [2a00:1450:4864:20::22a])
        by gmr-mx.google.com with ESMTPS id z2si326045wml.2.2021.07.16.12.26.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jul 2021 12:26:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::22a as permitted sender) client-ip=2a00:1450:4864:20::22a;
Received: by mail-lj1-x22a.google.com with SMTP id h9so15494539ljm.5
        for <clang-built-linux@googlegroups.com>; Fri, 16 Jul 2021 12:26:46 -0700 (PDT)
X-Received: by 2002:a05:651c:10a9:: with SMTP id k9mr10159411ljn.330.1626463606212;
        Fri, 16 Jul 2021 12:26:46 -0700 (PDT)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com. [209.85.208.172])
        by smtp.gmail.com with ESMTPSA id u26sm708987lfi.305.2021.07.16.12.26.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jul 2021 12:26:44 -0700 (PDT)
Received: by mail-lj1-f172.google.com with SMTP id r16so15485590ljk.9
        for <clang-built-linux@googlegroups.com>; Fri, 16 Jul 2021 12:26:43 -0700 (PDT)
X-Received: by 2002:a2e:971a:: with SMTP id r26mr10499533lji.220.1626463603654;
 Fri, 16 Jul 2021 12:26:43 -0700 (PDT)
MIME-Version: 1.0
References: <20210714200523.GA10606@embeddedor> <CAHk-=wjQeeUiv+P_4cZfCy-hY13yGqCGS-scKGhuJ-SAzz2doA@mail.gmail.com>
 <YPHUJsiaOuqzW0Od@archlinux-ax161> <54a99f59-0211-d9c2-4ab5-e74bbc72086b@embeddedor.com>
 <7774f876-6a60-03e4-b273-34f508d06404@kernel.org>
In-Reply-To: <7774f876-6a60-03e4-b273-34f508d06404@kernel.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 16 Jul 2021 12:26:27 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjGfJPROMSdC8n1xnvyQzxWiz2pXV9E6OE_vpti7rCdZQ@mail.gmail.com>
Message-ID: <CAHk-=wjGfJPROMSdC8n1xnvyQzxWiz2pXV9E6OE_vpti7rCdZQ@mail.gmail.com>
Subject: Re: [GIT PULL] fallthrough fixes for Clang for 5.14-rc2
To: Nathan Chancellor <nathan@kernel.org>
Cc: "Gustavo A. R. Silva" <gustavo@embeddedor.com>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Kees Cook <keescook@chromium.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=IJ70gg+b;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Fri, Jul 16, 2021 at 12:18 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> Hence why I suggested -Wimplicit-fallthrough-unreachable.

As long as it's a warning that the kernel would never set, that's fine.

I think it's an entirely bogus warning, but at some point as long as
we don't need to care about it, we can happily ignore it.

Or just continue to say "clang is spewing bogus warnings, don't use it".

But the sane naming for that warning should certainly not have
anything at all to do with "implicit". Quite the reverse. The warning
is about an  _explicit_ fallthrough being unreachable, and as such
thje warning name should reflect that.

So make it just "-Wfallthrough-unreachable" (maybe even
"-Wexplicit-..") to allow people who want that pointless warning to
enable it.

               Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwjGfJPROMSdC8n1xnvyQzxWiz2pXV9E6OE_vpti7rCdZQ%40mail.gmail.com.
