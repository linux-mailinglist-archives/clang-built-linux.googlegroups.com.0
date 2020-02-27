Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZ5D4HZAKGQEAEGUVAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 099C1172C59
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 Feb 2020 00:34:01 +0100 (CET)
Received: by mail-il1-x140.google.com with SMTP id i13sf1362545ill.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 15:34:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582846440; cv=pass;
        d=google.com; s=arc-20160816;
        b=S+fA3C72TU97Dw6uqq4NRcJDFlvWHHUuuacnCb2Fp9irKbHWOgLPGPduqtdcHMlxWC
         TuGIoZz9+kMSmNbPqZ+0616KOdRBXFFw/qo0g3R3+qoFI61kpBQksM7a7RbSZyyRSPV9
         QOrHQCt1EQNeiOCnKuzu+AWrPu87edH5S3A3eyC/sxAPY0cPUdldrEj2PwMDTITqC0GW
         AF5LCOb+keakmG+3ywn44z5QS1+amJ/CFZ1O4Kr5cqPFZn40PzpW1qLBrz6iv34NXy7F
         MBL0lzuPiL6DzOIF3efpt53EYB1xSkwzLJZobIuvWKzppS3HUiM5Fvt2Pjhcr/PEpf6V
         KJSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=uZD/f203NIbQcC2itDG4ZKEKOUirA3lSbNE/aodtY3k=;
        b=G2e/oiwZinBi+ISDtay/wWNLBVzqzO2jUGcoZyOBBN8Phxd+tQHYP4b4iDrlx+9Qn9
         wX6jcW2gnIgyv4P+6QsGX4TSCzO6SkiRSIW/QKSTASL1TsSElV5A/A587qndRuv7mAyL
         cZFNGUevC99WZzW2RGcM5rtg4VtpFVfnc6IEQfCjFlOPIHtKPUxIKLIDO0nPNBU6Ectt
         dhvjP4goTn0qJr+dRez/QbhHIXTvi5BkkGFWM6iwSktzQm1bN4SwE50HAmgvXd8QNIVX
         3qcQTfK2FspuFCkwy4tw/0UjINU+7N6S9nLasZAtyvyMxgSI5qJ608K3LHCD0iOS5jF4
         oO1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=T5+uCPzh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uZD/f203NIbQcC2itDG4ZKEKOUirA3lSbNE/aodtY3k=;
        b=DKEWDRIxR9devDKVNkX5SFzjNOFS9OlNXn5mdH95yP0z4x5cl61/+5YuRcCh8M1hrH
         a2H6o9y92VZDffS9sg6y7m6Wbikt5yo6/uUwdCS9Rn52EJPpg3JXhR6l4P/u6VYzLMNE
         y9lv6PHnsDDkSfQKjwuzLZ/Nr9eY6zKAEfhKAOZ1g3vQkyKkm/7pw5zdeytiXJzmV9W9
         /+cWKov+hpMG7/Jk3I6kWUSqD0XQT6R0Es1z6V2e1TfPy7fDSFM8t4WsEwcfRuU0/8g/
         G/GAowo3/SPxNxQo9mH1lDXpm7SajVRkNeufcLgdQTR3+x9hT7JWGHjI43XTI064vpT0
         sUJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uZD/f203NIbQcC2itDG4ZKEKOUirA3lSbNE/aodtY3k=;
        b=pr/0MUi5sQjkEyifIWBlCz1rBB0iB72JBMqRBpTsSoJF1eMIfaWAGMyXsDMYcG9rBL
         r5ObhvLxuubYtDourIHU8veisCw5BeQob2np0ze1pbL+X85z4XbRVvVgqD+8frbtcw0m
         CTYtAOGx31l+Jw6nYnXOPyyOn2cE5/1vef/Q58XHgb5qaoBrtDrmS6pQpVQKLpoP67BX
         nx9X9Ke7V/xHWRl1pf4Jgg7BrZEZq+7eWb1XrCNSVy3nwWHSQCapHoktw9FYYYxPR6jX
         bkIlyuj7Ku+YvPxyoa3kYaZb/f/y/XZSVyD6Y6vSvjzE+DmtDZubI6dkjfflhpqSqJdR
         d3nQ==
X-Gm-Message-State: APjAAAV+VUostNvqDRNpivzGVVExfXsiBCAO7aOXs6RofKINgp9x72CP
	Uprvt6+glMsUGMpLZZ8vhbc=
X-Google-Smtp-Source: APXvYqzUZlPAY1RCE8dRrQte6Tzsn0hUrLFLbDmlgysgz7gbGO4Mu+2/TW5tatpq/mP+XCK9pq/oZg==
X-Received: by 2002:a5e:8e4b:: with SMTP id r11mr1476144ioo.167.1582846439593;
        Thu, 27 Feb 2020 15:33:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1031:: with SMTP id n17ls102080jan.1.gmail; Thu, 27
 Feb 2020 15:33:59 -0800 (PST)
X-Received: by 2002:a05:6638:5b1:: with SMTP id b17mr1091837jar.66.1582846439182;
        Thu, 27 Feb 2020 15:33:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582846439; cv=none;
        d=google.com; s=arc-20160816;
        b=cNt4UXBnvzJ783f61YoORNHjjJ8eFjrqmI6Fyh7U3rTFNgCi8UShGsj/G9xVAUjafu
         SFMyyimVFthHJvngyane1kXKaEbqzvHNidfoh2y2K6oW4DxZ+azbu9e5/DWVZf4Cjpqb
         sutrrG7MOgtX+y8zCpKtLV7cyDiyZgL5chbYJCfbfDwOzNLvN+knoeWgPLPljoxuxbpz
         9zEDzN6IdQaXuPOnrdc/qccfB/5ygAlpBizoQ3GXTm/Nl9DTykElPxoMQP6NvqTnwiGQ
         CRN2xjc1ijkTGvxzfQWqeBQEBa7eAjSwTAGvbyGav91ZBkDPrpd85v6Yfi4zvvxzaMmG
         2wiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=faeXfJlzS5GQM7uC+KFYtFDnAxxuzD98DdPgHoNTSmM=;
        b=JJ66x57VjbYYOQp+DVXui/YtN/VDIPFRX/AqUz3KWDNcuKrrpSUmML+Q+Px6i1++/z
         RgFlVPeLKG72NwqROD8HaAjEL00usmkGjbI6AWoUSz/uYw2OaxtIzHo8dRCeGEQupY2J
         fKVHqdWJZkpuz0rndLPXMkNPO7Qnf7ZPy6AvxFEXR6Ze1/kDsrHWJxqSQfFJAs5V8cdt
         /PGrAhN5ZcuKlWbw96uq1l04c+HL8BarsY7+vbn8PHL2krCk5Qs4U07p9yYSW7ElG/IG
         fHAR7OaU+odb9MR4yrxdZP6n9G1hvUGbn+N9Yieww787CYCEwfyCZYvr2k7vyODluFPc
         n5ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=T5+uCPzh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id f85si57022ilg.2.2020.02.27.15.33.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2020 15:33:59 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id q4so448646pls.4
        for <clang-built-linux@googlegroups.com>; Thu, 27 Feb 2020 15:33:59 -0800 (PST)
X-Received: by 2002:a17:902:6948:: with SMTP id k8mr1162951plt.223.1582846438094;
 Thu, 27 Feb 2020 15:33:58 -0800 (PST)
MIME-Version: 1.0
References: <20200227213450.87194-1-palmer@dabbelt.com> <20200227213450.87194-4-palmer@dabbelt.com>
 <CAKwvOdn0wuytFTkJRm7u5vGUTWyYnrXdGGXHfoOfg6ndzT+u8g@mail.gmail.com>
In-Reply-To: <CAKwvOdn0wuytFTkJRm7u5vGUTWyYnrXdGGXHfoOfg6ndzT+u8g@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 27 Feb 2020 15:33:47 -0800
Message-ID: <CAKwvOdkbxTeABpnBxhRyGSqxUpDqnfzf-JAiLw0uqB0zq-f6Bw@mail.gmail.com>
Subject: Re: [PATCH 3/3] RISC-V: Stop using LOCAL for the uaccess fixups
To: Palmer Dabbelt <palmer@dabbelt.com>
Cc: linux-riscv@lists.infradead.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernel-team <kernel-team@android.com>, 
	Palmer Dabbelt <palmerdabbelt@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=T5+uCPzh;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

On Thu, Feb 27, 2020 at 3:03 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
> I also see two usages in:
> arch/riscv/kernel/entry.S
>
> Would you mind fixing those up, too?

Ah, removed by patch 2/3, sorry for reviewing them out of order!
Outstanding question about `.altmacro` though.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkbxTeABpnBxhRyGSqxUpDqnfzf-JAiLw0uqB0zq-f6Bw%40mail.gmail.com.
