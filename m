Return-Path: <clang-built-linux+bncBD4LX4523YGBBRE5TD7AKGQEV4NF35Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 680AE2C9C99
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 10:37:10 +0100 (CET)
Received: by mail-pg1-x53f.google.com with SMTP id f19sf725062pgm.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Dec 2020 01:37:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606815429; cv=pass;
        d=google.com; s=arc-20160816;
        b=x6tbWwsKYoZE7EtGvCQNuS6IakArkDDPoydOz6KZ8gWVzZtd4JFJcMGjAZyowk2Znv
         QFDh7oOuVkdxSCdJt8v4MIn+pjWZLf6VVLdBUqyzlRi9kPrFi3D5OsgUVkG4FQLz8hH5
         D7eok4VmZHD8nHgFhEVq+/Ovegi1KWGjcSf4um1tVWQosWGnkQYsn2+q4dh+OzFtil8i
         R3wtJGYIG4B13F9C1YNjSK0tZQ4DLCB6AlPJxIoFC4i49ofRkUHcexIMMLXVie1uwFbY
         lyiLovhX3LcCKj34clivkAxvxV/4w3A19IyLR+Buac6xawmhHewdudhk9wLyn3Wk1FRI
         svKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=a69GrMpGz3gDkIGvJsflFoS7To6XX3+oC8IjFMj0OKA=;
        b=ugAKKSLWKYx4dAsKp3hDl01WrZhOVlKQcVX/m3405sCn/mLLGjAk8c1v3y7pO4nYUZ
         JiqVoNTErFwuMc7hIh+IIrVtMkfYkAWmLcPJ5hvbku4vBQJUPQPkfGOVX2FWqVbpbvQj
         tmxztTshilj4JLsj4qKx+g/hymDOqN6msLFVfogFUdSWfFpAZFniHhwOuzOqOYQwgy6F
         icKqqtRVSiEq5n09jINceqEi8pkmwrjCThWEXrr+iLpjOIlGHkZ+eADQ+QlZPy3MFUuP
         janS/eqyh2vD2fH3fYl47rjGyc+2D55J+nx+UW4job+3e6iumHUGazV7nhgga+5bxYo1
         I2tg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=a69GrMpGz3gDkIGvJsflFoS7To6XX3+oC8IjFMj0OKA=;
        b=JZcR6F5k7aps1QsFZtzXk1lWPr+u38vp1Tftpcw2XrHyzKFpeqF4/walPODgUyppMm
         85cruYN+0xYCKHKJ/iY9pRa0dfmMQbVByBRBvTr3cjLjIKxgHgg27xlj9zrPpTCZv4pX
         sLAe8L/JUtG27ajjFE4MoPqQ8hrTJ/g47sGQJhHcY1JNT5GJSdmicDbX+4H90+MZRMwN
         a5kIqkJ8wWv8Z9dmOsWMt7zwHDI1Q0Y2iXJTGXQ2RJw4oeC+Ssj1UnCFq3VPGpCJuqVm
         0fbuXhwRONTCq05PNnAhBwpje5VaQd/GVGu6dxlKyGP84Itlgb7s6QSBswXDVnYVjmol
         luxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=a69GrMpGz3gDkIGvJsflFoS7To6XX3+oC8IjFMj0OKA=;
        b=ZjQobpexjMqysA0Ebsz66cinZNENzHV5Ldj3mc622Xcxi7MsjOl3LHO8290qQVgEfQ
         w1tG4SVfpQlBALOwOk722Ra2xaqtADqKp7z5+iH2uBKmgKYeIkwwk+EcbQowxmBGugWa
         CwkJnZD49tRiXDQedUfPyhbubX6ZlQkpZfHxhvIytWm8DA9tXckwOuATREVsqIgcFH5e
         PpgAhlzQ4zN8PlwryA8I3WEDVVS0GCPhyFSJT3dVyJU5iURN5poENQFE6rczK03tHf+l
         cXLCpwFax56dGwZ1niQoj1C6BeR5vKWkrHprmn53F/gdCSQJGf0A6d9Ovna8Fzj2yn2N
         gC8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532EIKc38R6in/zaJIsqQ568g3sP1ps0vQ0gjqzpEDQblfm+qjdm
	8rtLilpRefTSMNbtx/UKb8I=
X-Google-Smtp-Source: ABdhPJwc98VOK/psidOTHMjaRiZ94UXr57ySlE72JOpcBpLRwt3AAHHBpOPhJ8itwesWhUbW34mw9A==
X-Received: by 2002:a63:f203:: with SMTP id v3mr1526848pgh.39.1606815428877;
        Tue, 01 Dec 2020 01:37:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:e287:: with SMTP id d7ls912826pjz.0.gmail; Tue, 01
 Dec 2020 01:37:08 -0800 (PST)
X-Received: by 2002:a17:902:c68a:b029:da:8c9a:5d86 with SMTP id r10-20020a170902c68ab02900da8c9a5d86mr1994555plx.59.1606815428196;
        Tue, 01 Dec 2020 01:37:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606815428; cv=none;
        d=google.com; s=arc-20160816;
        b=yUXpPUc3v9raOUHXUoOat/8SVgqOmJdq25Um0xV5K5ArfX+c4zuI5QgnOQMC31y4Ll
         ZOqOHi6lINj0r8huXulymgL1s09I6ociK6rDEPZBwR7XpWPlHgpf3YMnX4HE1oQT2DNG
         nh5/EapbmZjVMsYnkrKZ2WJX7/yfzRp2902X4Bavg/DA873Cl1O14CXmWyakcQYsjmTB
         9hVD774MNGrAclBpYgyQ7h6/INuPXCwD7seOjfecP37yvH5iUNo1Bb3FUoGdZOec7tLN
         3pTnmfvgakKYQbTFg2OF/vZ1+PigsmMXdseZZ3QsfW00xfXWPWYR/320Sq1eGFHzdcJb
         05oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=NcNA6crElTucJZvZkYkJKPPJfOy4GA5d15Lf9zppfW4=;
        b=KUl+2wR8Q9QfrYSJYiC5OQPYZos9Ke8UvLEBry/ZxzTTHM/qp+TeRvZuwv7sYzgc8f
         Pvb0oSceeU5w0IpOkniOpJ4rDj3yZmNzv3YBv1RS5XbAIJFCc0s4/e52p5ermU+LhnWK
         HNCSqCESScL5OdJuDEIq2TrFFGsj5G2Ep/r8V+GfiWnFE9O5vwCe7Af5NbNl+BsiOuOE
         MTVWaZ/zAuC1bBvpIJtFMyq21QnLpWqymdsEnwdlv1JkueNlspTvNrVJoifRni13pFZ7
         Tj3XjbNcb9zndvnS/XK72gq0X2VUToVg1QrR7Sapi9h1jIyAQe3CQPkVD70h5rL+3lRk
         m/YQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id kr15si75947pjb.2.2020.12.01.01.37.07
        for <clang-built-linux@googlegroups.com>;
        Tue, 01 Dec 2020 01:37:07 -0800 (PST)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 0B19WsYY019369;
	Tue, 1 Dec 2020 03:32:54 -0600
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 0B19Wrls019366;
	Tue, 1 Dec 2020 03:32:53 -0600
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Tue, 1 Dec 2020 03:32:53 -0600
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: =?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Jakub Jelinek <jakub@redhat.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-toolchains@vger.kernel.org,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Sedat Dilek <sedat.dilek@gmail.com>, Dmitry Golovin <dima@golovin.in>,
        Alistair Delva <adelva@google.com>
Subject: Re: [PATCH v2 3/4] Kbuild: make DWARF version a choice
Message-ID: <20201201093253.GJ2672@gate.crashing.org>
References: <CAK7LNAST0Ma4bGGOA_HATzYAmRhZG=x_X=8p_9dKGX7bYc2FMA@mail.gmail.com> <20201104005343.4192504-1-ndesaulniers@google.com> <20201104005343.4192504-4-ndesaulniers@google.com> <CAK7LNAT5MQqUddv+QbFu5ToLBK3eUPArHSBR=5AOS3ONtMqKaw@mail.gmail.com> <CAFP8O3Ki9HoqcV450fn29fBOWAbmuGAdB6USLz8pGsW4Vzf7sg@mail.gmail.com> <CAK7LNAS_hxevOS7hKxepyCBVU-4j87Yf5Y8DB6mFq+4xuaz3AA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK7LNAS_hxevOS7hKxepyCBVU-4j87Yf5Y8DB6mFq+4xuaz3AA@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Tue, Dec 01, 2020 at 12:38:16PM +0900, Masahiro Yamada wrote:
> > We can bump -Wa,-gdwarf-2 to -Wa,-gdwarf-3 since GNU actually emits
> > DWARF v3 DW_AT_ranges (see
> > https://sourceware.org/bugzilla/show_bug.cgi?id=26850 )
> > This can avoid the `warning: DWARF2 only supports one section per
> > compilation unit` warning for Clang.

That warning should be "there can be only one section with executable
code per translation unit", or similar.

> I am not a DWARF spec expert.

Neither am I.

> Please teach me.
> 
> In my understanding, "DWARF2 only supports one section ..."
> is warned only when building .S files with LLVM_IAS=1

.S files are simply run through the C preprocessor first, and then given
to the assembler.  The only difference there should be wrt debug info is
you could have some macros that expand to assembler debug statements.

> If this is due to the limitation of DWARF v2, why is it OK to
> build .c files with LLVM_IAS?

The compiler can of course make sure not to use certain constructs in
its generated assembler code, while the assembler will have to swallow
whatever the user wrote.


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201201093253.GJ2672%40gate.crashing.org.
