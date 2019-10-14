Return-Path: <clang-built-linux+bncBD4LX4523YGBBU4CSHWQKGQEG4W5X5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0FAD5F05
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Oct 2019 11:35:16 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id g62sf16385680qkb.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Oct 2019 02:35:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571045715; cv=pass;
        d=google.com; s=arc-20160816;
        b=popbJEgTZBDlSYujJb3kdIPfnD/Cfm3SY7+Gq8zy+PdWXaMg+4T72SDCdGahVNFgpp
         LYTNna9g+s6NX+tMJS7eNV2f4FG5UgATZmaKOKFjRpuCM/4HGhh3sAYo5ku3lfH3SPpg
         3N8cDB64RBo0VG7TvfUV1Wy2RzC6c0GcIvHEeYJQY7PuDiuRefU5vA6+JwVMMVxMWzGl
         FidNrUCZAkoqkgWk5370+Sn6/E+zkdz2btPlLEDjqtvk+0Alhi88VnkvK7I00a7WEzI2
         78qTt1F9EzQEkZ8I913iaaMAEYgPPAEAhfTxNiL6yWNfvhl8uAmLFt5M6h/Fy1q9ZK8E
         GQtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=/hjyuBAQwIDTnoqUpPRUMmSWQl8Kb2uqp6EI7fiT6O0=;
        b=TIO9IdMvJvpIXWsC4ajSLN+tbwYT5u0YWe4/r+NyDhdYcNUrKW170/6dNKIVOKoHQG
         eLTb+Ip0MHyw89T7ccvXMIiTSunCOKH4pquWIv/y2zNpvtGF7UaNFg5m0LLCoQ5QiRk+
         l/QgSgjdw78O/P7Ahxn/72M77WvADGRrPSVD6xBU47PCHIiEmAl62+3QxP0dRNQp9sPB
         +Vluov2WY+6qm+SH6G5kBP2ySFE/ZVEO5wv77mOLqJijxkZgh0n6m2WUo4kQMwntgrBm
         vi+clk4W1BYMUwMBwzMFpfwmV06K7D+3FXDQuH5aZNvJ7Ctvq2tjjkHiQD9wSdY17tZK
         5rtw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/hjyuBAQwIDTnoqUpPRUMmSWQl8Kb2uqp6EI7fiT6O0=;
        b=p+K15tJ/TTo7I/63y3F+eWCI990Gua8H8iKVxLvZeA2bWBbNBNwTr2umIA7/qRvUMt
         fTfF7w1pJJmtRpYGLsKg/5txFgU6tvn8RGBy0a/GSpQ541YrtcQktNTsHr37o+9sbC7p
         +BIsZgYcM1S5nzFt/ZgDRfpGJjPMT+S24U/q0UHtPG3APt2KoYPcVLbQreV6JkzKvE8B
         ZL9y9TTg3qsMR6184GTz4UxMKxfpIqzFbJVVk14duz0PZm1/uhsfwqD1C29J0HrR8o6v
         6t8rIzAwc5TWlVJ08YNW4N7CDpMJt3ahcWYcUgL/C+J4Hu/QRZLJhoJ45LTz6poXCWej
         FyyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/hjyuBAQwIDTnoqUpPRUMmSWQl8Kb2uqp6EI7fiT6O0=;
        b=eWuhrwkBp8dAQYQgWgM466Q03rCayNWyrCzpp0a10eWl7tVHGdXIFBvLUpwM0hZsZl
         1LWg9HfgugI/qqk89uLd4GpTsUf0q2G/75ZUPN2bLO17sMynIK0oCwGCyUj+7YDLPqJ2
         CvsCl8L9hpcSQvnUK54cLOP8YhltTcFg8pAsdECjehef3aI6Iei2zEEXPuobUFukMYLh
         Ts6m3XXE7AppIbJ58dGtwIrqzIAZHzH/hBHY/ZOMvmTJ3z5YXJl/jMo3jpdLdTIkxruG
         oIdItcxg2KSQ4C/FpRmdt6cy5RnW89jwk/bKjgCJXo63vRl0oO/mXeiDuxNpe6GhRTIi
         FvZg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUyvRcYBvo0u/68bnpx1ajAjwMBFP27OjNcfdECXQ6Hg3KYs00h
	dochoZgyEhuLqnIG4M0SM1s=
X-Google-Smtp-Source: APXvYqyiY82gMuh+r0dsbZNa9+Ggw8EcZW6aay2TfWsIIjG7bLEgKL04/ivrgiShbEFioQqxhblw4Q==
X-Received: by 2002:a37:630c:: with SMTP id x12mr26970826qkb.343.1571045715533;
        Mon, 14 Oct 2019 02:35:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5493:: with SMTP id h19ls3720701qtq.15.gmail; Mon, 14
 Oct 2019 02:35:15 -0700 (PDT)
X-Received: by 2002:ac8:2727:: with SMTP id g36mr27066910qtg.202.1571045715105;
        Mon, 14 Oct 2019 02:35:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571045715; cv=none;
        d=google.com; s=arc-20160816;
        b=CHu443nxux2/dltIyKzPvyvIGZvcg79i6ZsdZFS/H5e/mxrCwS+uBW0sEs/pk+kGYn
         lwW7K0wxFhyZDzhtDdr64yLOrHngTxo5yRAIKSQvHrZayV7y6ogDxBQBS/kbeBJ/XSR/
         qd6TRZ6a8cJD37a+CPG16CL4urfENoOhA2Nhux5sojcKyaFvn6ePE+bhyjyRFNuVlMxl
         QagmMFW4FE4A907QE3BkGibqI0xqUOvAR3s9qoiZmtPfbTVG2/wbqq84qsItYahn+4re
         PzqfOxUF1MvCD250Skcnuv0KOWkUu+6U7HDDUKuAYSjA2T2obxiKKB/TnC2ZF1lJzBcH
         fJqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=9ow7DuOeX0gyZUNRFr6LW45l7kMGj0yWYPJHBSrtT2Y=;
        b=ZzupnjL43vQC0eWizZnIUqn/JrVzHrhy/lkZdOWXDNSjhyv/dLFI/xNtuL9gpHl57d
         M74HFtpYljse2rCQzmNiy5dIF3RmhCZSS4ycs/AVc6xj08uuculNrkKA/UJQ4kCl/s+q
         gYYi6mXmLxorGIDTyVnp2KWd8xJgjnGbI/Ezl7zwR4VdoH+/kGe38EHyGeFjHfrGSbOa
         MrKNaeDhB1cSMvJjpcdWpUuOY7+pES7XUG+7twC9jh/IaMN8A4YzOmQMI+asy3BpTNrP
         fM5WdjDTAmXmJ1qBim25c17Gf2nnDZxJszMSgx3akrOVZotlY1zTe7OjB3wly/wQHkZd
         kzfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTPS id t187si383333qkd.0.2019.10.14.02.35.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 14 Oct 2019 02:35:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x9E9Z2cq027678;
	Mon, 14 Oct 2019 04:35:02 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id x9E9Z1ac027677;
	Mon, 14 Oct 2019 04:35:01 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Mon, 14 Oct 2019 04:35:01 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Paul Mackerras <paulus@samba.org>,
        Michael Ellerman <mpe@ellerman.id.au>,
        clang-built-linux@googlegroups.com,
        Nick Desaulniers <ndesaulniers@google.com>,
        linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 3/3] powerpc/prom_init: Use -ffreestanding to avoid a reference to bcmp
Message-ID: <20191014093501.GE28442@gate.crashing.org>
References: <20190911182049.77853-1-natechancellor@gmail.com> <20191014025101.18567-1-natechancellor@gmail.com> <20191014025101.18567-4-natechancellor@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191014025101.18567-4-natechancellor@gmail.com>
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

On Sun, Oct 13, 2019 at 07:51:01PM -0700, Nathan Chancellor wrote:
> r374662 gives LLVM the ability to convert certain loops into a reference
> to bcmp as an optimization; this breaks prom_init_check.sh:

When/why does LLVM think this is okay?  This function has been removed
from POSIX over a decade ago (and before that it always was marked as
legacy).


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191014093501.GE28442%40gate.crashing.org.
