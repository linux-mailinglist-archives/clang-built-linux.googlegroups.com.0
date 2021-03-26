Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBCN362BAMGQEFTXOYEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id 6291234A34A
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Mar 2021 09:38:34 +0100 (CET)
Received: by mail-vk1-xa38.google.com with SMTP id z68sf1766492vkd.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Mar 2021 01:38:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616747913; cv=pass;
        d=google.com; s=arc-20160816;
        b=GCnZ3LKNZfXkbBlDjr8ueGkycBF9e2k0lTWpgPflzfwCxTy8GDLW9/Bsg3zrAu+11P
         nJxZlzn6Z0bWl6SltgHMYGrbRZZ9ILm9Yu4cCuTwgs8bITF+cRuu4oyxSCa8UlBYEyqW
         ATvUye3GWaxk8U2cry9QzGC2OgD1L/BC4cKS4BY6mqcOJ6y0N+bjJQauM9C818HDoRad
         Oy/Gj6ohjK8iG8r+clbHKZpHgU1kWHWvsHfN+qRXZ0t73cQh0PJjLMcWhve2zU/o7kp0
         LdIDVa2qjJ3lyOHfAFNQ3klG8ucoAmh7ogY5WB0+95lyuNvUjb9G8gBfL0r6Qm3mg9s4
         sf7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=FKmVphwzwQrM8857r/Uyc5Ryn88x4+yDIRCpaNb98qk=;
        b=PzBxuK6FPYcnsR94VoLeEthpUHJOYeifaYYDx3NU9DES0bLpSw2zCZN4xva6pJ9J0C
         PqyTyoQq1SrNMALxVeUtjOrRPiYbUhpDErXIazMPeEDeB2eKYzaIIPi9LeGmxwaLTCtp
         tG06G9P9gYY4pPNvS1ESjlejMcPkkfFEm3bu32uOh0RREWxnEXpghqVYqzxJfSt7MGwR
         jkD9npbEu+qPFifMKEhRd/5O2ha3T07x+IelDu17kvS4TAjH6h0rLDzSKiwtCVfzSmdJ
         ApTpjXVKyWgVcVCOJW3EaMPAOLkIERyABQ5KLAYPWsOTSIfS8SmBUVVu1uAii6wqGU18
         Wv8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pQlYGB7i;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2f as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FKmVphwzwQrM8857r/Uyc5Ryn88x4+yDIRCpaNb98qk=;
        b=Kai0Qt4r1N9BJHjJ7NllwQqhm2XXZK2aYl75m4n1X2CpJGJ7jcGuzja63AT8+94mZh
         7FQczyhmVCSTwiRRX7jk8JNTO0LwE/PNTmjURuuFty/6KvyO3jlqux08Lpi7h7HGyyzY
         JJUdJy1hyk3Xq7mRqzfp2gl405pm2X5wqJvASm2neUwVaHkicM77WpSgwwNbgKZBfXGL
         Q38dM9jFt8H09JkDwLaraz2lbj3TFrkJJjRiUOEtRm/gl37tjgdzaPWJ3Mcyn63NRDpr
         r7l6oCIjWB+RjalZn6UmUAl0G0+HkTY9R82/TzTcNwv9oM5mxVlCm1zzxLf5vEG4JqU+
         cPKA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FKmVphwzwQrM8857r/Uyc5Ryn88x4+yDIRCpaNb98qk=;
        b=jjWGjswPdrn5LlLZ+tnvbusIEneIAv2UlZoKcBdOdNpqLYO/vXWl9SZTycqAnQtpyW
         300aCaLZxf9sH4Be8jh7K4OH+wOPRQcuYiqscs8qkbN1F8X6u0UZjKG1nPbV3Z5v+NKD
         iWzQgaFg/x/yw0ldz9DpNwk7E4HbpkZvtH6eyp6EDary69NLrkl9Uub5/qRi2Gio1A3N
         n7+syfPDFQTk8ZMh+8yof74UJ0mRHfvTvMxsXVWFCxmUW/o1XPtuQ4/57ZLE9O8QiwE7
         43oCll8ZCC4Is4PHsqu3Kz+ZtjLZlZ+05Jyuc9LZZncGc3lXHnkUoFLhgk3gsMrgFjZQ
         8RKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FKmVphwzwQrM8857r/Uyc5Ryn88x4+yDIRCpaNb98qk=;
        b=ioglx0tX3DR4Rc8FnZvnWXW3yCt2vIx60NG6e2T0xCtBr84JBzfqYX/plFOJiJruUp
         iqWJCwN+9ZG3eTQYIbmCvhKO3SZl5nHQpu/UHyap81N7p2UXglUWep+PgAiIDx+SYZgb
         k5LFOykgaaQTldhhQ2GB2V2ArR6zu4LI7nGf1ppXI33SFQhG7N4dh5B7gRw8M+4gk0uD
         tsTIU39FR5ZPLlEK3xhoZYUUSrSPMts+RYViN7lhy8+jVXbfqmzOrEDdG2lMa4/onO+B
         GwcEUyqQpPvU1cWTr7v4N3qjAthW5i7LiPxwDBjNtHxlr9tME5h220MZiCa7b4+/pUbL
         5ALA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53287B65nWJ0lmIg6/PPpGDaAuJQCXDZaXlzLqvRMMk9FxjKbcxb
	McRvzZsnfo46AqnYlFxVess=
X-Google-Smtp-Source: ABdhPJwhc34kS1iF8ibl5O4ytqU8DOkRAwBeiznI3HOlXoYgqNu/QochZFoDE71FlnufrqaXjHo0Dw==
X-Received: by 2002:a05:6102:208:: with SMTP id z8mr8010165vsp.2.1616747913446;
        Fri, 26 Mar 2021 01:38:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:c89b:: with SMTP id n27ls474078vkl.1.gmail; Fri, 26 Mar
 2021 01:38:32 -0700 (PDT)
X-Received: by 2002:a1f:7846:: with SMTP id t67mr7776677vkc.21.1616747912837;
        Fri, 26 Mar 2021 01:38:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616747912; cv=none;
        d=google.com; s=arc-20160816;
        b=C8IyJHvlkk6IYkUP/CMJHv4IVfJmdktYXEc5kOcR20UG+IlZrLkzt0D9TVfKyUry1F
         9kIRqEktx8I7gI4dEpXamzcVixqbfgd1rZ4NOf9puUPfVKiWP52sQmgByLld+Tt4Gz02
         SuS6y8YPDbn0/+RmisOOfem8UdoSKWfHo0vIF71D8/MzoNdKNLlmYGWesGIoTfjAiJyx
         fiUAzsEkvUlEc9y9ZRPls74f/08R6PgUCS8zCzl9l7ls36+EUJwdZiWHGiF/pkBeuYlo
         iA0hK8Kb/wb64aQhKuF11ceb+qGRcjv5lDCU8gv/K8LzKidx6FmUNXqXbFmIYhgKHy6L
         0yQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GuhNBMfb4hYHF8Dvll8qk+/OkL+kGWlRUKt4MNqIm78=;
        b=z4TluNL8vH6jNC5yb8O+tN8l2YxgDvbNKZ69ItKkVuqq2GJijgdrbM7nhPZg6fHNUU
         LpPRcGBXgpZOv9n+mSGelz4YmpdqB5oiMKS3PsCvo/RWFbB8Tx7jxne8qMxNLKi43twW
         Ze7hP5Gk3Z50XEz80xpdxgyOG82F1DoeO5qhuckFGCdzR5GeYGdDs+FGWa0EgGxc/SkH
         fS3IVM0UxAJirDHJNNRp6a8qWgVKo00diSjQsmHJEJ07DhWl2KcjmskZrDWVrHrKCiav
         j0b9bUZQygtar95ySuXqZbFc/Xs4lgZmg2RWcLTIs7QUWeEx7idmFRtzK+JAPt/0kGmc
         OEew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pQlYGB7i;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2f as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com. [2607:f8b0:4864:20::d2f])
        by gmr-mx.google.com with ESMTPS id u21si477031vkn.2.2021.03.26.01.38.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Mar 2021 01:38:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2f as permitted sender) client-ip=2607:f8b0:4864:20::d2f;
Received: by mail-io1-xd2f.google.com with SMTP id k8so4580856iop.12
        for <clang-built-linux@googlegroups.com>; Fri, 26 Mar 2021 01:38:32 -0700 (PDT)
X-Received: by 2002:a05:6638:1388:: with SMTP id w8mr5089745jad.30.1616747911961;
 Fri, 26 Mar 2021 01:38:31 -0700 (PDT)
MIME-Version: 1.0
References: <20210325223807.2423265-1-nathan@kernel.org>
In-Reply-To: <20210325223807.2423265-1-nathan@kernel.org>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 26 Mar 2021 09:37:55 +0100
Message-ID: <CA+icZUWgxmrtM=oj-aJi1KXxZx0YUZDiUPK42MjHvqS96aazYQ@mail.gmail.com>
Subject: Re: [PATCH 0/3] Fix CONFIG_FUNCTION_TRACER with clang
To: Nathan Chancellor <nathan@kernel.org>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pQlYGB7i;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2f
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
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

On Thu, Mar 25, 2021 at 11:38 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> Hi all,
>
> This series fixes function tracing with clang.
>
> Patch 1 adjusts the mcount regex in scripts/recordmcount.pl to handle
> the presence of PLT relocations, which happen with clang. Without this,
> the mcount_loc section will not be created properly.
>
> Patch 2 adds a workaround for clang less than 13.0.0 in relation to the
> mcount symbol name, which was "mcount" rather than "_mcount". This was
> written as a separate patch so that it can be reverted when the minimum
> clang version is bumped to clang 13.0.0.
>
> Patch 3 avoids a build error when -fpatchable-function-entry is not
> available, which is the case with clang less than 13.0.0. This will make
> dynamic ftrace unavailable but all of the other function tracing should
> work due to the prescence of the previous patch.
>
> I am hoping this series can go in as fixes for 5.12, due to patch 3, but
> if not, they can always be backported (patches 1 and 2 are already
> marked for stable).
>
> This series has been build tested with gcc-8 through gcc-10 and clang-11
> through clang-13 with defconfig and nommu_virt_defconfig plus
> CONFIG_FTRACE=y and CONFIG_FUNCTION_TRACER=y then boot tested under
> QEMU.
>
> Cheers,
> Nathan
>
> Nathan Chancellor (3):
>   scripts/recordmcount.pl: Fix RISC-V regex for clang
>   riscv: Workaround mcount name prior to clang-13
>   riscv: Select HAVE_DYNAMIC_FTRACE when -fpatchable-function-entry is
>     available
>

Does this only fixes stuff for clang + riscv?
If so, please put a label "riscv" also in the cover-letter.

- Sedat -

>  arch/riscv/Kconfig              |  2 +-
>  arch/riscv/include/asm/ftrace.h | 14 ++++++++++++--
>  arch/riscv/kernel/mcount.S      | 10 +++++-----
>  scripts/recordmcount.pl         |  2 +-
>  4 files changed, 19 insertions(+), 9 deletions(-)
>
> --
> 2.31.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210325223807.2423265-1-nathan%40kernel.org.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWgxmrtM%3Doj-aJi1KXxZx0YUZDiUPK42MjHvqS96aazYQ%40mail.gmail.com.
