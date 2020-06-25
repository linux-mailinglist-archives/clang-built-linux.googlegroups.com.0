Return-Path: <clang-built-linux+bncBDXORGWOBMIJJ56P64CRUBG6HATX4@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id CF43620982E
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 03:19:16 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id c25sf3533576edr.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 18:19:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593047956; cv=pass;
        d=google.com; s=arc-20160816;
        b=aAvW3vmaq1KeJsdAt0l96QzXB9GuvYcycN8xWndVUmOFFNSnCUZZ66je+HMeuAxTs9
         Ee7dpIGMh+3WpZtzyLJR7+52Y519OrWsdc565FmXJ5iQfOo0qTDvgTCR9UV1PNgfbt4f
         9zpEJ+KA1ODVyWTKtH2LyHIVZc9YJowpaZlG+za2v1PYzf7cz5puUaHDZkDnhmTBdYVK
         HgLZwlDCWsbWdwZUh6yEpJ6F8wUWy1UxL6kwTWgOU4zF+tlMZ71ND/5wPldQvO+7BhP2
         a7SfrcjGuazDcGC7EMNruHYBDPUQAX0kGjTzceblPleN7T1Oyr6xGXCMZ++LNZ/n2q+T
         qjcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:references:cc:to:subject
         :from:sender:dkim-signature;
        bh=6LhrBtzhBe0fNKg8yQ7QRhofPvtAn2Aip/JGP7mmhIQ=;
        b=K+vOlFYctqcX6Lv2NkOrHQdClmpE0syaTndQnLCYJq1aIDerwgcs/Q50QDdgCsqEb8
         cOBR9oeZ2LneW+0iDTUPf5ZyNj+PUxzPZKkaUvcv4kENmHPp4F8kIkN5ZmM5gZRqQPki
         vy7gcTZMo2BLR9ejpFTAUFeCaoJgrbA29SR02vkBDNnBXrqGEL34JtMascdtZ07C3e4A
         esAZhKkR1UEKL+0duIxnPyFaqs/MTNh8YM0VEkN0OTDnYUHiC7+c7+qUpqgsTU63VI4z
         MtWOyMOeDUtds+763veiPNWWLD4RXP1jsNQfgqfyT+ECUaAnYjm4x6e7IXPz0m4V4Em2
         cwzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=X0Kcl4JB;
       spf=pass (google.com: best guess record for domain of geoff@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=geoff@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:subject:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6LhrBtzhBe0fNKg8yQ7QRhofPvtAn2Aip/JGP7mmhIQ=;
        b=D0HpOOfflbS1PNEroxZgqnNWqrTDeKMqBOJTdCUvc2WlQ+3LqpHCvLRy0bP+C5wAZS
         jZ0qVK5ip5g5gvQ372xbVd4xv0FUgsROiVrhGIPmisC+UNonsXy5nDbnl/o8+VBWfcKo
         sGLKPvRwzn//XedwPujXrb1CfqMZVzw347Fu5wCh517nAQibk7CsA1nTDzHmnNJADsa0
         +vdSZty6s0UiTZlmLsyr7EcKXKWy12TI/1VRI+yq1dWfAk5VibWHaFTXGIeC6IdVYIhS
         Ru7iOq3fKCbGWQFZPDBo8XSuJ6H854QQPis1AIN7ecqr9B+f8csiDzHkkn1e8uQbfjhE
         tZjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:subject:to:cc:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6LhrBtzhBe0fNKg8yQ7QRhofPvtAn2Aip/JGP7mmhIQ=;
        b=iGKnHbzL3DkCCBlEB68CeKoYfKxtMPlEWANQ6nv1cNbr3JX2j+coZEG2UFzGbpuLQH
         ooMSU3finTX7HBJCzJRp8eaxbbSkolMaYks3yOCcDubBrDoYcAP3EzdnXocfHN70Xu46
         11hEuDQMJVOnOkImHqNLE6Z+ys7CfjTqgsIB0T2XF6N8rew++l0Lm2qu+1COw848fGRi
         kCT5KveYGPAxvjiuPkN3qq/PhwQmlbPDK8c9Jc4m8FI5GzDlU9mkHro33uQbjciE/rSQ
         RE3GMzGNZBQW23A0kTOGtxnQKwka+IQtgAd3hoKq6pd4viiAzpTM4TFLC5q1UA8T5NiK
         onrw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532tW/e3d+48DZl1vbVU6on4b5RhMypToiGZsLy5Nrl78QbUC9uZ
	haJKehGKYp5y7kdVGjEmBjw=
X-Google-Smtp-Source: ABdhPJx5HStHwQnBor3esuz77dOKg5z36aKVtNRb/WuztTnGMP4IYYMuzJKl4AgXrCwrTXLhZXzggA==
X-Received: by 2002:a17:906:494a:: with SMTP id f10mr10073323ejt.428.1593047956590;
        Wed, 24 Jun 2020 18:19:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:6d58:: with SMTP id a24ls1785453ejt.1.gmail; Wed, 24
 Jun 2020 18:19:16 -0700 (PDT)
X-Received: by 2002:a17:906:1697:: with SMTP id s23mr9723319ejd.166.1593047956045;
        Wed, 24 Jun 2020 18:19:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593047956; cv=none;
        d=google.com; s=arc-20160816;
        b=mMyawSqw4JfF3EvbABPZPtV2zlC0hJEl/2hfKbf2PjFAQ3c1221MQ7qkOfZ4MMtruN
         0JG2rvPksDBOdZOUNhGHUVS62PpvSlL+GtYgq95rcln7IJGthgD1ub6H9Jnv1Abpl5/j
         eiwcKWa56tC0DnLy13ZlQDgH2ZlZ4gC/BeFn8l/jpLc6wVZ2ncTVjFKaBz2jlDFJpBVX
         vkR4xL+hJCpovR9TASxMok/MaKj6z3ZE8i5sEGPeSqk+u5fx4YpvIOiissWPfT+jEqjO
         DNf/JQz0EXHsvf7UOMyUaT+/0JighTm7KqJdRPQ2SF5w/O6JIUMUDeVYZuBeHCAlePAO
         Q7xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:subject:from
         :dkim-signature;
        bh=neCjOc11qing147Knuno5Zs0TZ7UJ5WPV8cnPuKXZ2w=;
        b=lewUbmPFN8hYXnEwP8QsXoR1DCGpj8VDYfy97ub8ChPlz0hPlFuOLLr0QCvumLQxro
         cuz1SJIM5+i+OnYORnTRu8706VV+44pEcZ44ES4QsD7MRD9b6IHbL2qCC6TKu7sgGMk/
         IUzGD7lUQHooosM+hZFTzYH5S3x2eUxCLWDBsOKLdqbxEA0Fc6k6H1vT2bxrxuPFqchT
         GGoOCocW91R6vNC9ftwqiRjwvZHcXGmyQytF2NzaacnZ95H78M9ikP0ULpEVMuxIuZNU
         Jzpnk//1ENsESRm4+eYgL1QBXnw2pLkXkdgn+pSAH+PN8bEAt1v3oUKIFIDVgIj8XA66
         vfqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=X0Kcl4JB;
       spf=pass (google.com: best guess record for domain of geoff@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=geoff@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id v2si1046342edw.4.2020.06.24.18.19.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2020 18:19:15 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of geoff@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from [2602:306:37b0:7840:f887:89b1:c866:efda]
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1joGXo-0007QV-Kg; Thu, 25 Jun 2020 01:19:13 +0000
From: Geoff Levand <geoff@infradead.org>
Subject: Re: [PATCH] powerpc/boot: Use address-of operator on section symbols
To: Nathan Chancellor <natechancellor@gmail.com>,
 Michael Ellerman <mpe@ellerman.id.au>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 Joel Stanley <joel@jms.id.au>
References: <20200624035920.835571-1-natechancellor@gmail.com>
Message-ID: <1bbb6956-d9de-e0c8-5b45-20b6fecc2189@infradead.org>
Date: Wed, 24 Jun 2020 18:18:48 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200624035920.835571-1-natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: geoff@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=X0Kcl4JB;
       spf=pass (google.com: best guess record for domain of
 geoff@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=geoff@infradead.org
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

Hi Nathan,

On 6/23/20 8:59 PM, Nathan Chancellor wrote:
> These are not true arrays, they are linker defined symbols, which are
> just addresses.  Using the address of operator silences the warning
> and does not change the resulting assembly with either clang/ld.lld
> or gcc/ld (tested with diff + objdump -Dr).

Thanks for your patch.  I tested this patch applied to v5.8-rc2 on a
PS3 and it seems OK.

Tested-by: Geoff Levand <geoff@infradead.org>


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1bbb6956-d9de-e0c8-5b45-20b6fecc2189%40infradead.org.
