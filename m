Return-Path: <clang-built-linux+bncBD4NPLXYE4IJH3UKQYDBUBDINXQM2@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A2D3A391D
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 03:06:28 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id d20-20020a0565123214b02902ee335ffed2sf1100344lfe.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 18:06:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623373588; cv=pass;
        d=google.com; s=arc-20160816;
        b=WHzRSSFkYf6yUcevs4rYViVSZn4mQB0hn6ujkT+7Cto57zpXJz6cXbkeXj9UaFvgEZ
         M4rt6XzAjOqo48ybr3lePUcOVP0hw9QDytILhpvryVJBn7+E+ipztfWB/eqnEZ4Cha2M
         iNYbsDHEa4fwbLLwIB8PMkVEZesTc/IBHUCKINv79h22M4N/0g02P+NhL5RXnEgqEDC+
         iyXcQO1FOHHCQ06jNyyD8Wr4b25oQWacVkY5ClngDUQikqTQMTXI5oSRUmf6z7hS8oYr
         ZwYFeWYBNBSdtEjjSeKwhOPVHyypb54UBFqjb3k09ip08oFJzJyAswOFkl2oejl0rECm
         5ohw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=hFRO9yNb5hx4fB/M86ONMcJ6iV8gcdRdGvM/VaTW+6w=;
        b=SXE2VeXDkNrBvtt45m7CoO8aR/LFpeTLX2L+LgfUTlCoU0KpUONSZ9BM1iKO/rcPBS
         6vRJpjhg1QYRSPKoDZhYLiOTx4nFzOhszPegsn1NR4jHaxx5eDBwX1WfHCTZF4RMnt8I
         aOjeqJZGz/WHfoC+wxTz2rIJYN+4aqJLqg+BUrqBBos+ySHQ49y9A7kbCFgQYAAubTCQ
         KfP0an5vqB1g15KCyRTJIbl6QTDSj4mshjFERyruLQEkNw/sEievOC+A2/Uh079fOCEw
         snfQtOApPI2wY6ly9sVTsLkHHqV1/7LvvLRfrWl0rJ20RihDekGC3eyG2/d+Kha5s3fH
         +kJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@paul-moore-com.20150623.gappssmtp.com header.s=20150623 header.b=1eGkRAu1;
       spf=neutral (google.com: 2a00:1450:4864:20::62e is neither permitted nor denied by best guess record for domain of paul@paul-moore.com) smtp.mailfrom=paul@paul-moore.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hFRO9yNb5hx4fB/M86ONMcJ6iV8gcdRdGvM/VaTW+6w=;
        b=PaGybZCQ9CCmC1Pga2Od3PVHukf9RjU+SgdmBIp1SpDTFItrwzcD6+VudaKIoQUcAW
         BNtrajvzbbNZuikMoYaMy/4h+v1MSGgKCf8YSqV7jyRrc3yURPDQcSDl1LSrKE2fNZtb
         /NtHQTQZ24j+qGeAyc/6FzZlzcv5sWJq07BFcQNJ/Lu9TkLvfJm3jG/1cYuQ0oHOIzqw
         Me2shGu73I6XCE10v0RO7u+iBjWKZQqRb4WW2vXeVRVeV89rJUAjGnNgWueP3iG86TgA
         u8F2NNdpqJjXbcLNQDSHtu6008T8tSM1WB7DipusioUK83ECZRObhwzNcYXe81yAH45/
         fO5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hFRO9yNb5hx4fB/M86ONMcJ6iV8gcdRdGvM/VaTW+6w=;
        b=DRMUzHQNq10crQWg++5PBPh1N3bxCThjMJWTkTVL8uHIQ4VMH8RB/8wg19JvFyqCzp
         pbYuYVhwGkRPCc3zL/Lo0IRIQq3T9t4pjBxNYlFCmzvz6JosIZ1ySO6kRClDqIJrnsOr
         PfM0WLDsLpQ48kvIdQiNqFTFdkc45Kgs/9Zi0zsXyjPAd5SW6GIqDkOGSGRo3i458k6q
         z3v5ZUDLgUhF+s2IlxbDcR7lHqo3mvOC7IipxrfdMSlByUalMETI4+lnA8YPfvLBEyw8
         JwcnAhdFKS2crzodJux+bgGBhHxv5Mrll/GXT0yB235fkBMK7ouyNPaupCZJFLz0eAoJ
         WMmg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5314khaza3BLcZ+0kgREggglibtypGSYb0kGjpP2H7l2vkrLTZ+D
	NfpFbWCgrvw6J9715PUnjVE=
X-Google-Smtp-Source: ABdhPJz8EX7N2PWrYey27XRv21GwhYeXAY5C4RVeZIrnxOKdH8cJMZJ/l67bFYx3qrJw7d0shRUpKw==
X-Received: by 2002:ac2:5617:: with SMTP id v23mr1018160lfd.532.1623373587924;
        Thu, 10 Jun 2021 18:06:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b0e:: with SMTP id f14ls5586811lfv.3.gmail; Thu,
 10 Jun 2021 18:06:26 -0700 (PDT)
X-Received: by 2002:a05:6512:1027:: with SMTP id r7mr929924lfr.153.1623373586893;
        Thu, 10 Jun 2021 18:06:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623373586; cv=none;
        d=google.com; s=arc-20160816;
        b=wiqeIDAS+YhIcu11Qk06VMVrIfTsXmNqsDVTSiF+g7MRC7pfe5sijUiOmBZfNX16CZ
         7cA2LJuulD4jKLPI2kCKufmSqE1gtQxHPIKoROZuZ10jfygGQ7uqPcaJgvYbBvnK9vkW
         d2jmWhGEFjEgsTIbiEpgPQnHxazryzTuVHjglkhljJ6VnTvt/+0JzYo5DShJCRjRX5Om
         sI/62SDx/F0T/X6nxmeUMMtpCrUd1lFeNdbKiL6DnsifFu7VK08wSWw5piysXqFX40/s
         6jTTl69i+OQpigqa56ougBv1B/8gdMgoEi5VoLgB3LTxHiad/Vdp2u47KLoxsYA4Ztz4
         5PIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=H2IbE0UDqkplcoBwYyFLTzh0YSSXPcpK0pIRNcznpsk=;
        b=YumwEIt5EPYsV/rHba30LrNSKaJjVj12t+GzqBqerN+WrTF8ex6a1OAmQp8eYjoan0
         XC9fOqC0CmYuadWKahiL3dq4o1X5EHW5WnMKHq5fWC7hDkf9EvRtHvOx22TJ5/nOY7sN
         A1iLL4z//3w1CYO/UvrAKGVyCYOE4QZY041Okc/cp5LRpHPK9oz0+CcFTWX6/w3oZIwQ
         V2aA4fX1Km9Nsm4D4772VpQ5YeADif5Jdj8OMhd2DA1Wyps6IX/AVEML6ZA2mPStRssH
         Dh+aGm9YKziDc2mhwMckWWHzkPR49cZsPdjE7/8SbXyJgy9D3A9nLH7FC/avBE14JF1G
         ryxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@paul-moore-com.20150623.gappssmtp.com header.s=20150623 header.b=1eGkRAu1;
       spf=neutral (google.com: 2a00:1450:4864:20::62e is neither permitted nor denied by best guess record for domain of paul@paul-moore.com) smtp.mailfrom=paul@paul-moore.com
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com. [2a00:1450:4864:20::62e])
        by gmr-mx.google.com with ESMTPS id b12si175729lfb.9.2021.06.10.18.06.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jun 2021 18:06:26 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::62e is neither permitted nor denied by best guess record for domain of paul@paul-moore.com) client-ip=2a00:1450:4864:20::62e;
Received: by mail-ej1-x62e.google.com with SMTP id l1so1919073ejb.6
        for <clang-built-linux@googlegroups.com>; Thu, 10 Jun 2021 18:06:26 -0700 (PDT)
X-Received: by 2002:a17:906:4111:: with SMTP id j17mr1050234ejk.488.1623373586316;
 Thu, 10 Jun 2021 18:06:26 -0700 (PDT)
MIME-Version: 1.0
References: <1623317883-54209-1-git-send-email-yang.lee@linux.alibaba.com>
In-Reply-To: <1623317883-54209-1-git-send-email-yang.lee@linux.alibaba.com>
From: Paul Moore <paul@paul-moore.com>
Date: Thu, 10 Jun 2021 21:06:15 -0400
Message-ID: <CAHC9VhQ_XkZ=ADhe5=PqV-zNuEGOHDZfsBnSErW3j+zz5b4Qrg@mail.gmail.com>
Subject: Re: [PATCH -next] selinux: Fix kernel-doc
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: Stephen Smalley <stephen.smalley.work@gmail.com>, Eric Paris <eparis@parisplace.org>, 
	nathan@kernel.org, ndesaulniers@google.com, selinux@vger.kernel.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: paul@paul-moore.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@paul-moore-com.20150623.gappssmtp.com header.s=20150623
 header.b=1eGkRAu1;       spf=neutral (google.com: 2a00:1450:4864:20::62e is
 neither permitted nor denied by best guess record for domain of
 paul@paul-moore.com) smtp.mailfrom=paul@paul-moore.com
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

On Thu, Jun 10, 2021 at 5:38 AM Yang Li <yang.lee@linux.alibaba.com> wrote:
>
> Fix function name in ss/services.c kernel-doc comment
> to remove a warning found by running make W=1 LLVM=1.
>
> security/selinux/ss/services.c:2437: warning: expecting prototype for
> security_pkey_sid(). Prototype was for security_ib_pkey_sid() instead.
>
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> ---
>  security/selinux/ss/services.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/security/selinux/ss/services.c b/security/selinux/ss/services.c
> index 3658488..bb043bf 100644
> --- a/security/selinux/ss/services.c
> +++ b/security/selinux/ss/services.c
> @@ -2423,7 +2423,7 @@ int security_port_sid(struct selinux_state *state,
>  }
>
>  /**
> - * security_pkey_sid - Obtain the SID for a pkey.
> + * security_ib_pkey_sid - Obtain the SID for a pkey.
>   * @subnet_prefix: Subnet Prefix
>   * @pkey_num: pkey number
>   * @out_sid: security identifier

This kdoc function header block is also missing the selinux_state
description.  Would you mind adding something like the following and
resubmitting your patch?

  * @state: SELinux state

... I suspect there are a number of function header comments with
similar problems in the SELinux code.

-- 
paul moore
www.paul-moore.com

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHC9VhQ_XkZ%3DADhe5%3DPqV-zNuEGOHDZfsBnSErW3j%2Bzz5b4Qrg%40mail.gmail.com.
