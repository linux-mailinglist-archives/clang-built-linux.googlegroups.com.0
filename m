Return-Path: <clang-built-linux+bncBC6OLHHDVUOBBDVB4DZAKGQEQ7F4B7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B70017282B
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 19:55:10 +0100 (CET)
Received: by mail-lf1-x13a.google.com with SMTP id q5sf68075lfc.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 10:55:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582829710; cv=pass;
        d=google.com; s=arc-20160816;
        b=pwNXmJ3B2W3LfZmH1rh/6Vp4Kt+z28ezEt6wauq1qmPoa/eKRLB75+AtgSP+EQRE53
         7IJduN0H4z7jTsoIg8Mh0gK4jz8Ak524+8wtxjmXUqUXdunbJzJT/pJtzdhohat6qpkU
         XYFsTXBxx/NPh+utx6kGyLny981A6ggJjqJVk5FIOc+EYFj2fA1ZJ3sqAAQOV+GgB3Eq
         PLI7cLD5AHABa5NlFPBx5nPd/kvx7MpU1wv8IRPyv5X/u/tS3LT224RFzBag9Ddx6EmJ
         fMHJ7QBdPGRA05dknNg59XKZuQBK05g0Ex2ZPfvfotu16Zb8eFMuiHqfBSKIUoawgZ/T
         s8FQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=pa5z2p9DQh6A4t2ckI212YLUEk2s114vNOVtH+/350c=;
        b=MdlYnmZ4xHANA/ZeaxQzmvGTPl4C2UXgyLGB6Z/phWXvsn0nWrysNMVVyw88y0H1IS
         p9hoax2BJAL+/VJlCj6lOyTRxbnXn2y8yYjiecLYmjV4qrsx3YvEhODNlzWScqVk+Bug
         0MKHrRPRAK5EPWZvzOUtxinnyy/V2I54XJBY7EM9OihV/PgxG3Y41nHr9ei23cVVr18v
         rWVaDvxQctHfvuiKHsFI79R+Nr+ydC+UMx5RZy9eIbmPralC+rrC28LaVIwz/TSuwK9j
         OqEr49PHANiU2Kh5LOotIPQ8saqIz/bAT8GIpNjjpyZjFYHI7ITQl4926IOA2TC6ufBW
         yREQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tvcOJ69L;
       spf=pass (google.com: domain of davidgow@google.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=davidgow@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pa5z2p9DQh6A4t2ckI212YLUEk2s114vNOVtH+/350c=;
        b=qiFyaREN1fQZWfrSLeUXD0/xLOsbx1iK9Bmi/S3XeMVktKk/LuyZUlIj5cwkOXroW0
         7fHJJHaq0MfDrs+22sn24+crSU0DhMnmH6IPzu3Sh5/KRAZuOIk1GPKWZ7HGs29ruJ4S
         ZzYB1LUHQVfAz9lwUBbg7+OhCUJJrLMYphEWI14ZDD1eZTIIk3sVGEaUtj3c5GtJYu8Y
         817XkzbjTMvyHxUa1YZMFQvjXBaqvqUumpUWMQ7ZzBw7wKy9SKs6x+PWjoN8qzQ5uP+m
         OtvykcPPqdpd+B+BCTncG3BQISyAbNX5J/2Ok7XkT6+z07ds7ur1Y3GKgvKMs7IR02Rt
         ToMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pa5z2p9DQh6A4t2ckI212YLUEk2s114vNOVtH+/350c=;
        b=r3gJ4rJfkRMbkTdjv/0FEgd7CvXioJYKgDNzx2jO9+9VLZv6+cKDxaW6QTumVYq4xH
         Mz6kgtm9pq3MOA/x2UOAynX1QiJp9OX2sO98pwh+0viGORzwgOI7xFV+HL51mzUy0boo
         yv529LeNL3FE8o5ZESqS20SZPjj8hfgfkghhv69l2zlBwK9hHRJHVJsiApMaofqLTO2r
         retsaUFT7pUh6wZodwHkbg7hLlrHH2gbEa+cV6qYK1ef1z3XHcraoI8Nnd+PFj5OpNWA
         r4+tBgxFK+PaLy7mzGKhKMEbvoEJoVgIG+yUZQ7UGiThOUwXGodyh0f1iAmmDYqJjBp9
         00Qg==
X-Gm-Message-State: ANhLgQ0jcd3KcTpI+rmdpZ9D66XiV/sGUZ9arY8ObSYjSZxw6sGluCzc
	t4aZfeUTY9HL+NPmyvTammw=
X-Google-Smtp-Source: ADFU+vuqlIPmDJ5GRGM0P9dHucAsg3nooTm5gd8KISKV7TIn+pova8asvPyKKnij6pKw9xWVz/ohVg==
X-Received: by 2002:ac2:42ca:: with SMTP id n10mr410398lfl.215.1582829710148;
        Thu, 27 Feb 2020 10:55:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7309:: with SMTP id o9ls105204ljc.11.gmail; Thu, 27 Feb
 2020 10:55:09 -0800 (PST)
X-Received: by 2002:a2e:3514:: with SMTP id z20mr267528ljz.261.1582829709326;
        Thu, 27 Feb 2020 10:55:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582829709; cv=none;
        d=google.com; s=arc-20160816;
        b=riQFKrFTYIQR2kk1716J+dFvOoMAJ+RbtXS65s3Y/kJuGMm0fGwqVtXW83bBGBzIyo
         c+Ta9zM/aLN00MmLMaA/26JQBzrYx8YOlewnQxVAtdiqgD2BMHlTL3plGacNbyVcz38v
         a4iCrikwerjp6NSOgy3w1tqsPM4elvzyM4wxQj+DrcCLDNVcIk+7NQ9xi+EONMmEErgn
         Wqed9IgTqc1x9KBu6INt8MnHDbYykYcNlwgsT5OlhyU1GWrOOWFZ4NNE4+OEABqanO28
         NmL0A2N9fEgzeCtZgI1kKXnfJCpDTNcl2UPKXz57YvT2FH+R53nITPgC/lobcHC/KPzo
         7G0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/V85YaAe8XR5oTJ96oXQ+ABPr+snDJtWcbgtmR0Qea4=;
        b=qGvYjd+km8Yry9jfucZL5Et8psfw1bK00S8JKs7qEu1zHM/+Gc4yEhxccDX1Ij4J4i
         W0a1WgVXZ+9pKtm6sK/II4fVcRbwS5gdRwV4g7SNDGTkQYJ8ERXQcGgr3XRdQpUizAHr
         yZvYp4SbyN9Sxh0L0P2terxkknW6DfVSVpDi7qpkFOpMULOeU/4aUgBrxwRWStSFj9AI
         uRfCRhHggUaPr/FkllXkR8Azrn7AoTu2pwBHzsIJ0UF/f7Rq3pRYpI6OfNo9CE7xG0E1
         v9FzfjYPrwu+FBw470CQWUlzji9H5/3hD3q6hcFUNENNJkoyRWiqwWHXk6q0VNiMTeCt
         DJyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tvcOJ69L;
       spf=pass (google.com: domain of davidgow@google.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=davidgow@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id d8si30689lji.0.2020.02.27.10.55.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2020 10:55:09 -0800 (PST)
Received-SPF: pass (google.com: domain of davidgow@google.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id z15so125278wrl.1
        for <clang-built-linux@googlegroups.com>; Thu, 27 Feb 2020 10:55:09 -0800 (PST)
X-Received: by 2002:adf:ef4c:: with SMTP id c12mr248687wrp.203.1582829708486;
 Thu, 27 Feb 2020 10:55:08 -0800 (PST)
MIME-Version: 1.0
References: <20200227063134.261636-1-gthelen@google.com>
In-Reply-To: <20200227063134.261636-1-gthelen@google.com>
From: "'David Gow' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 27 Feb 2020 10:54:56 -0800
Message-ID: <CABVgOSkdphVaWhL1bBpC-vBgJ5pS144wD_g588o2_xxHXd=Ngg@mail.gmail.com>
Subject: Re: [PATCH] kunit: add --make_options
To: Greg Thelen <gthelen@google.com>
Cc: Brendan Higgins <brendanhiggins@google.com>, 
	"open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, 
	KUnit Development <kunit-dev@googlegroups.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: davidgow@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tvcOJ69L;       spf=pass
 (google.com: domain of davidgow@google.com designates 2a00:1450:4864:20::443
 as permitted sender) smtp.mailfrom=davidgow@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: David Gow <davidgow@google.com>
Reply-To: David Gow <davidgow@google.com>
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

On Wed, Feb 26, 2020 at 10:31 PM 'Greg Thelen' via KUnit Development
<kunit-dev@googlegroups.com> wrote:
>
> The kunit.py utility builds an ARCH=um kernel and then runs it.  Add
> optional --make_options flag to kunit.py allowing for the operator to
> specify extra build options.
>
> This allows use of the clang compiler for kunit:
>   tools/testing/kunit/kunit.py run --defconfig \
>     --make_options CC=clang --make_options HOSTCC=clang
>
> Signed-off-by: Greg Thelen <gthelen@google.com>

Tested-by: David Gow <davidgow@google.com>

Nice! This worked for me with all of the options I tried (and it's
great to see KUnit working on clang builds!)

-- David

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABVgOSkdphVaWhL1bBpC-vBgJ5pS144wD_g588o2_xxHXd%3DNgg%40mail.gmail.com.
