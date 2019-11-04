Return-Path: <clang-built-linux+bncBAABB5WPQDXAKGQEBA6V2TY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ABDAEE121
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Nov 2019 14:30:31 +0100 (CET)
Received: by mail-wr1-x43b.google.com with SMTP id w4sf1974207wro.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Nov 2019 05:30:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572874231; cv=pass;
        d=google.com; s=arc-20160816;
        b=e6wGsUH0mK/6plCy+i3qV3a6SdxWMUMOSt31x98UQrda1LrUdkc2bJoqujS7rZs7A0
         nH0o1qW1rqREAmyAUgce19axg1gq+N/3sG/OS8nfovXYvPepUrevm7E8HvY4qxInzSHi
         nGFUc5SYP/RT+Q+ao6TW8PUDr+1bnHkah8chDZvYAW8wgCgF5RODljqpYwP32tgZ+Fwv
         v1JJ4Hm9Vj8XST0Evupt5rsr8skoebhGOyqtocKuqkfP8FUIc+Kbp1JkYKXkQXS9V59q
         PJLddoSiHWdN9VrAPnixJdLWyEXGhMRD4EVpwJZAoe2ZYtm02ZuevdfXF+s3eG+8YuZW
         12qg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:references
         :in-reply-to:cc:from:date:mime-version:subject:to:sender
         :dkim-signature;
        bh=jh8Mr3lmpr6KCYJWoZlHZeVJocyKk2QjdqDb4e6Dd2s=;
        b=leWeXeedZuFTgUBHWW9021STyXs18gJuSjuACTbUCkkFcCAF3Ppt1FsaBg97skubFy
         zcKT1L6sXNhHJi3lvEMT/XnleFETK7sShqrIZzjoQW5bLZu0fv7N0+zj4yuosUNVTNXk
         PUftzea0Y/S/17Y42rBSrkwRBvFLy/yn01wv/2tE91pMnqYBDG2aaiojfUL/5GlYlo/O
         F6iAxbZK2bgP1tnFx7xeKUB1pk/yh1HyyyMg4ebU1EWNWFLtPfgCm0SJ/eqkRNo/f7Mw
         pmT6Eu1nlqb5Je3iQhqekZu5+7uDae/rKXmU+wl1rQkLtWCnc8pLsVQSiG6fqeQt9Z87
         Q21g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning maz@kernel.org does not designate 213.251.177.50 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:subject:mime-version:date:from:cc:in-reply-to:references
         :message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jh8Mr3lmpr6KCYJWoZlHZeVJocyKk2QjdqDb4e6Dd2s=;
        b=JFPyMrN1W6k5M6mb2M3+05wotv1l2dGZx2GzbOJCJv0kpJTRWd2hsC+/RU7zllRtWB
         16T7vUKCnfp63ZbidZbtXVMH0aZW9QCymgpu2ZjG266lEQBXiSN7vP14q98B+1TlM2jX
         cV4Qc+8JiCdd8jnyR7zvjkf3k1dxGJHp8qTUALtbTXqjG52C6KCWKb4ZHHtzxBOT1QMQ
         bHAYJJwAoXvMFmDwmeT5fG19l1pLDh8UN4i8/EpP5Ec/OKH68OJlocz+0E0B5BGcj4N4
         ut3Lb+GQHyaX23gkd4QHWnFFqdYcP7Izz55v7YQsKQ5AQ6mQYjRuCmB9LEE0pTeCYTIw
         82PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:subject:mime-version:date:from:cc
         :in-reply-to:references:message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jh8Mr3lmpr6KCYJWoZlHZeVJocyKk2QjdqDb4e6Dd2s=;
        b=RklRvVu195Ork0plnX4rscPGCG9l5HkcRYSVuKPqK+q7R9Pi9JNR0EG+tyaxKP1wk+
         LoyKFXp2v1upPNl/lW3nWSeDnDWQMh+R0wuRYz7kLcX7v0awKs5v7nm8auILe1uGPiSi
         sBu9JLjyRRAHVz/nqjSPv8i+kU19oKVQJ/yTOvkXW/RmyGhr+/9eqLb54DAKbzIxG3vP
         ZalI5UF5jy/TdT/lYEO1WcaJC8pmj+0+dA5BqJpomVITh5sJrpL7ycFHiuc4j9r/zWuR
         JepEKCNOu5ChMmVlm4PMSUaoAgyIVV3pZf5lJslPd3hrwrlAQf5WR4I75WvSEpMHR8Lp
         NXyw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWMyAHIgDKScn3qmGPGlmj25hCnseasH9439ZgWrii1nfkvuF8C
	pXHh8MeCoOJoZgfZGE/qfm8=
X-Google-Smtp-Source: APXvYqxxKV/UejEu2rpvKjhdM2wNDO59/+/Vj1zpJ8JvD9T3N9KzUa3yaTs/Lv2vfFjatAYB6jlJ/g==
X-Received: by 2002:a05:600c:506:: with SMTP id i6mr6067925wmc.153.1572874230998;
        Mon, 04 Nov 2019 05:30:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:8183:: with SMTP id 3ls14225107wra.12.gmail; Mon, 04 Nov
 2019 05:30:30 -0800 (PST)
X-Received: by 2002:adf:8481:: with SMTP id 1mr25290487wrg.189.1572874230682;
        Mon, 04 Nov 2019 05:30:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572874230; cv=none;
        d=google.com; s=arc-20160816;
        b=Zb1kPP8AVbY65eeix0uBYq+sT93Rv8AE/QBrjqGdxFHH8w2TzXyPbt+qY017ku4u26
         71aWBnuLZI3gsgi5WLqMWrmDwCysetCz76qJ6NVuq/LZkA9NVsJLnUp1lIOjUis+WoBN
         wEm94BKtXyLr6CxpHsKX8CVjvcqKac6EWguRr1s2OOHVh5ToXInRlS1y1ZLVRkLijQnk
         1qhs5/L0SHsLU7FvHGeiTVNr1Rfa9dPbB4ilSHlhzUZwPzWsqQh9tfmW/W7PWCWptV+B
         N8yYfheAYgzY/vIrNsQX9FK65KVhCCXMwLz0PHWnKPxSxfxikHziaOLaC0xxsBC/xbkf
         vDtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:references:in-reply-to:cc:from:date
         :content-transfer-encoding:mime-version:subject:to;
        bh=76hH0papFB7KBpzeEeWe8JqJ78/wg4L+7d7+dq6Qp6M=;
        b=MRACa8yf49yj4eh3pN5PHmhH6MIfX2xp34NA3CK60mNGXthtJvGponxhUV9Ttz0GPb
         055q2bHL0HEZjncyayMV2guvWMms6f+FuXbsrEQkMG9QlgzFTYfvFfLP+jh50gZOzhS+
         O0hbRDqRLijGFA7QTvfxiKIzMoHLnhkTl+m+a3eGCG4itKkyatjyRGbhz3IJv6aFSlu0
         vo82QZDcvK5YRfMVCzc/Htvff+H/GCwEUGKhzJNSziCkdj1CBCn3dR8W+SHZ802oxMjs
         szT8P0LUlKQjd61YvMQpMMKuOIWI0bcAs9F6FROq79cIIdRMS0yzoLJ5DZ2REHI69r3Y
         HBhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning maz@kernel.org does not designate 213.251.177.50 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from inca-roads.misterjones.org (inca-roads.misterjones.org. [213.251.177.50])
        by gmr-mx.google.com with ESMTPS id y188si719132wmc.0.2019.11.04.05.30.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Nov 2019 05:30:30 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning maz@kernel.org does not designate 213.251.177.50 as permitted sender) client-ip=213.251.177.50;
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
	(envelope-from <maz@kernel.org>)
	id 1iRcQv-0005Lj-UU; Mon, 04 Nov 2019 14:30:13 +0100
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v4 03/17] arm64: kvm: stop treating register x18 as  caller save
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Date: Mon, 04 Nov 2019 14:39:34 +0109
From: Marc Zyngier <maz@kernel.org>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas
 <catalin.marinas@arm.com>, Steven Rostedt <rostedt@goodmis.org>, Masami
 Hiramatsu <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Dave Martin <dave.martin@arm.com>, Kees Cook <keescook@chromium.org>, Laura
 Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, Nick
 Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, Miguel
 Ojeda <miguel.ojeda.sandonis@gmail.com>, Masahiro Yamada
 <yamada.masahiro@socionext.com>, <clang-built-linux@googlegroups.com>,
 <kernel-hardening@lists.openwall.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
In-Reply-To: <79e8f958cbde52a3d90aec24dd4638d9@www.loen.fr>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
 <20191101221150.116536-4-samitolvanen@google.com>
 <79e8f958cbde52a3d90aec24dd4638d9@www.loen.fr>
Message-ID: <63921b46250e2eb8eb9fcf0f8ec93b0c@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: samitolvanen@google.com, will@kernel.org, catalin.marinas@arm.com, rostedt@goodmis.org, mhiramat@kernel.org, ard.biesheuvel@linaro.org, dave.martin@arm.com, keescook@chromium.org, labbott@redhat.com, mark.rutland@arm.com, ndesaulniers@google.com, jannh@google.com, miguel.ojeda.sandonis@gmail.com, yamada.masahiro@socionext.com, clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org); SAEximRunCond expanded to false
X-Original-Sender: maz@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=softfail
 (google.com: domain of transitioning maz@kernel.org does not designate
 213.251.177.50 as permitted sender) smtp.mailfrom=maz@kernel.org;
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

On 2019-11-04 12:13, Marc Zyngier wrote:
> Hi Sami,
>
> On 2019-11-01 23:20, Sami Tolvanen wrote:
>> From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
>>
>> In preparation of reserving x18, stop treating it as caller save in
>> the KVM guest entry/exit code. Currently, the code assumes there is
>> no need to preserve it for the host, given that it would have been
>> assumed clobbered anyway by the function call to __guest_enter().
>> Instead, preserve its value and restore it upon return.
>>
>> Link: https://patchwork.kernel.org/patch/9836891/
>> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
>> [Sami: updated commit message, switched from x18 to x29 for the 
>> guest
>> context]
>> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
>> Reviewed-by: Kees Cook <keescook@chromium.org>
>
> If you intend for this to be merged via the arm64 tree, please add my
>
> Reviewed-by: Marc Zyngier <marc.zyngier@arm.com>

Erm... Muscle memory strikes again. Please ignore the above and use the
following instead:

Reviewed-by: Marc Zyngier <maz@kernel.org>

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/63921b46250e2eb8eb9fcf0f8ec93b0c%40www.loen.fr.
