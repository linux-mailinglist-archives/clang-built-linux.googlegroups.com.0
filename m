Return-Path: <clang-built-linux+bncBDHPTCWTXEHRB3EO5DUQKGQES3E74OY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BA2175851
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 21:47:56 +0200 (CEST)
Received: by mail-ed1-x53f.google.com with SMTP id w25sf32714577edu.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 12:47:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564084076; cv=pass;
        d=google.com; s=arc-20160816;
        b=MH9SjWyKH9IlUcRyCY1Pwn1niCO8HNADhfZZ3RPI/HrDe92ZO32al40oEjrkiVSZ81
         Xkab0WW2QR6BSWCxYAME53wDY5GBaTxjewQy2dKqZSvhOVuF9G0KV4Qu/3KWWI3B9dJz
         XrVTJDB9uBRhoQsS6OKRdU67IXPoqzGRDq+nMYLn8bkqWftEpe1LomDplmIF+0xxA9Iy
         uDRPAq6ewiBPbF0M+jV1H88mGCeRKp/BRWf0lT1LjRYq+thkmahVjTyH2QWaIf5Rdo0Y
         B2Bj+3GcJvh6CJFHXFpmzmaLZEQxusf55UMABRaBKJU4WhdQrl+G8B4CDf+n+ICdJJB2
         uUZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=TY4oLPeBbqh2L3moYKEMQ60obY/Bzs5prnVpuX54k/g=;
        b=j1dL8mJ5QdBnSBfn3H5926GKphai1O2zvItC778SjaJuA+A4U/0/o3rqLTOQ/lY6Tx
         FHitzelPejrY6kVct8MWyMP7rvHPPGLXecT5WhBoJhXrMTQKbieGIAgkVDT1WisAFwnF
         pSW4A2UW1Q0/HBbw3M0tNEI5hrDNiJblnB0To7con3bPpfolvPpQhKsR1DbPRQ1hqwYf
         66dAnSuZINLgVLMdNxErTylLYJ0t4vv5CVKGiqbr2Ak9BMkGr/2mCleg8GEzhEEIhBcp
         0JCGVKAlVBlAUN2w2XfiUPlRwNkK4rxWl73GcB+7RBNcMFmtaRQ59p366oxM9uB+GNUQ
         TgZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of heiko@sntech.de designates 185.11.138.130 as permitted sender) smtp.mailfrom=heiko@sntech.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TY4oLPeBbqh2L3moYKEMQ60obY/Bzs5prnVpuX54k/g=;
        b=rfX0OXtIuEmdEKOcNbnMcBJNJbY/yWgZIhZjew+/yXyjzRCl2Vqv0Y2rqziYg6ULUx
         PS4d/SS724hHp/0KJOEyKwdTTItPqxvUihf+4f5zpuLXIxB80Kox65aYpFmsa8DedM2y
         ig+nV8xfYt/SCEYVRj15Am70AYJ6u7njvZz0+IDWqvnjBD/PiHrH9ayup02/tOJhv9UV
         /iyvZqOSN/7G51EbT3kBybil/RzpOTOyxW3TEjEWwzaMoq0BIafODlN4TgC4xWcnwA/7
         w9l33kqbZtF17ltWbJA7RO9zGpJ2KIaa96b6AS+l7ZSepqW2ZoLxaaAq7hAkAJWW7u9I
         yphw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TY4oLPeBbqh2L3moYKEMQ60obY/Bzs5prnVpuX54k/g=;
        b=CvQ9sbsjagUf5abKHHtvFTjbH9ryEQVXgwY5ifounCb4RzP2+oNap3x4pc9HVZXDKK
         Lu2OV/bXBeg6vO9oxx9US0uGHfWNwFCfX+AT6aMfuOW6ozqBNbAy1aFxexdXb5ic3Xx2
         GAs3Dr4j1ew8V3Dk7iHDBw/gZQGg7theUMwORXzP7u+QQpvLOk6y6Sibbb9pVRo2j292
         OyGqPxyybpnjhJZMlJnk4zMiyyt1/1zkYRMMD2yFZ+QLtRB/uGzVqGnBXJdqN5wZlMOr
         Yd5vUqvfWpWgq3cFfrteJLcVosqNIGuT3EFNESAZ2Dg3F3WG+zsMLBRuwUt9olhYWf0o
         DQQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWygy3eukAALcgHrIZ0Bdg4zAGomXm8iMf7Cq7nC3s9CiKsVdVv
	iVWhsRPnYFQGoirSZFZ7ByM=
X-Google-Smtp-Source: APXvYqwLUUYA7bwuF8LQG66gkpakbRblMqaKZIWonV6rcT2d+S+YpxcFMnv4d5Q1W1K4XVgVVo6AVw==
X-Received: by 2002:aa7:d0c5:: with SMTP id u5mr77456595edo.299.1564084076186;
        Thu, 25 Jul 2019 12:47:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:27d4:: with SMTP id k20ls10780903ejc.15.gmail; Thu,
 25 Jul 2019 12:47:55 -0700 (PDT)
X-Received: by 2002:a17:906:7d12:: with SMTP id u18mr68158537ejo.24.1564084075802;
        Thu, 25 Jul 2019 12:47:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564084075; cv=none;
        d=google.com; s=arc-20160816;
        b=wKb8Hd5rPwxU8HhuTVzmgPDUzf8yE/FsNFibIk+2jXimsNyuVHOaG65FcKXNNnS2xi
         YA5R+DwjLlcJriwVgP7+UB2eG/Mqg0FLCekLZZzWPVjdgqvVgXN27vAhKliAcIKicqJE
         e01qCns9XXIdl53bx+GIpCmCMBsQDcnNT5GyKfzVieUtnHOvTnu+F9eqj3sAYHgX/qZC
         6TayfOPxYF1dH5Xmhq8DfDXxAl6NjLLf6eUtYvj6se9QBkA+A6APcQC/qjQ6auL63l7U
         Wi5V53EV3rUXMmjf1K+wsbvw/RMuW5Yasd0tTdLMnh4qQ6GkRUwG5XfyALZ262P4xRUM
         Hayg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=eIhew5/gl36hFdUhjmgSgoxDu2V/7SN8GPoNQbc3viM=;
        b=M9sv0svRft1mqwOJzdv/D2l6GoEP8JgyiiqhTgakj6CqGLMQQZzqWEBo5KQ3cho3TF
         UlRWzQgcKoL+pfWvs/RHBPAMCzrnD4/pDgRNiGybObwWTHW5OMXtb3GnOlmsnFFdG+RW
         A0yzVD6aSGGB2W2sc1BUwBQk0i09C5HIMYPBmc4ByB/M73NGE1pzL3/ygyMZmPdEjprW
         hzKJdThvDxy/gaqpd4PTyO0aEIoy2KQymhNGefwGMWPAlttAbUD+j3bOdm+6qMYbmKEf
         o8vJw8gBIIzXbqPAw3ocacAcPRFpgKt+g6tXOSACuwXUqX6iT4nJ3ZXjb+k1/eQNOMo/
         G4Lg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of heiko@sntech.de designates 185.11.138.130 as permitted sender) smtp.mailfrom=heiko@sntech.de
Received: from gloria.sntech.de (gloria.sntech.de. [185.11.138.130])
        by gmr-mx.google.com with ESMTPS id a41si2685429edc.5.2019.07.25.12.47.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 25 Jul 2019 12:47:55 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of heiko@sntech.de designates 185.11.138.130 as permitted sender) client-ip=185.11.138.130;
Received: from d57e23da.static.ziggozakelijk.nl ([213.126.35.218] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <heiko@sntech.de>)
	id 1hqjiK-0001nu-FG; Thu, 25 Jul 2019 21:47:44 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Nathan Huckleberry <nhuck@google.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, andy.yan@rock-chips.com, zhangqing@rock-chips.com, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] clk: rockchip: Fix -Wunused-const-variable
Date: Thu, 25 Jul 2019 21:47:42 +0200
Message-ID: <1785547.ocfUNUBeK4@phil>
In-Reply-To: <20190627222220.89175-1-nhuck@google.com>
References: <20190627222220.89175-1-nhuck@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: heiko@sntech.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of heiko@sntech.de designates
 185.11.138.130 as permitted sender) smtp.mailfrom=heiko@sntech.de
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

Am Freitag, 28. Juni 2019, 00:22:20 CEST schrieb Nathan Huckleberry:
> Clang produces the following warning
> 
> drivers/clk/rockchip/clk-rv1108.c:125:7: warning: unused variable
> 'mux_pll_src_3plls_p' [-Wunused-const-variable]
> PNAME(mux_pll_src_3plls_p)      = { "apll", "gpll", "dpll" };
> 
> Looks like this variable was never used. Deleting it to remove the
> warning.
> 
> Cc: clang-built-linux@googlegroups.com
> Link: https://github.com/ClangBuiltLinux/linux/issues/524
> Signed-off-by: Nathan Huckleberry <nhuck@google.com>

applied for 5.4

Thanks
Heiko


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1785547.ocfUNUBeK4%40phil.
