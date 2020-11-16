Return-Path: <clang-built-linux+bncBD6MT7EH5AARBWEKZP6QKGQEFMLSOKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B24D2B4F88
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 19:30:49 +0100 (CET)
Received: by mail-lj1-x23f.google.com with SMTP id o19sf8882375ljg.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 10:30:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605551449; cv=pass;
        d=google.com; s=arc-20160816;
        b=l+napX+uWH2uH0tZcnGp1NKT6gQuqsOOq0IofvkAtf5OXIgW1MjW2Mfxv4bNowg2r4
         CMfZoyZaIuoKS569dLyBykutqAeU0hSMKHeWuhwMkM4IgqCdhcT9Lpnj1GOMzxtyW/h0
         73sLrkKqff/vXzKPsPHD6Jy3nAHFaILZu88NuPGkiaaYoYDDu5lvH1LiOhZCvQ+kTX+D
         xeJxajnWKXnqvmb3jQPWfAXep1nXzsauVydHlz9+Kq2jyV1wHxiNne93sYfGMrCdpDJy
         qZNDoRVDwO5uwo9+C3Z6IKezuI76VAx5qGzHyvXr9VNXa/VSNIy0QkGFmhkgmKNxCuFa
         i2wg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:subject:cc:to:from:sender
         :dkim-signature;
        bh=07aBK6BjS1fdfCvrD03RXobbmQN6Y715A7HNolNjFM0=;
        b=Jd9lXmtubCS01PJDdhcRpdEEoba0XeYljl8C6lB2X81Lt0czGoT+WZJwR+/umYSs03
         fYgSRz8+RYY5TZXxlc5DHLiHmd9yZv/1O+1DL2+GxpygzHwutI/a+mLh621GAUIKbmJD
         VhY0pq7r+Pr57TB4TIpdZwvgPaE9H/manyrnR+QxxAFfNZE4y2vR06VSmFiDX7X90rad
         jZZ64HzBgnKZMM1ZmrgB4NG/EG+VKYpQ6mIG2R9IK12yIaIlsFh5DqhJq/jRp6yNmmCo
         nsaIic/aYRiTCR0NGwqVkBCzR+U17l9kckOb3+P8v2/99uTMmK0LXk0cvaUH2lUWONjD
         NfDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of whitebox@nefkom.net designates 212.18.0.9 as permitted sender) smtp.mailfrom=whitebox@nefkom.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:references:date:in-reply-to:message-id
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=07aBK6BjS1fdfCvrD03RXobbmQN6Y715A7HNolNjFM0=;
        b=IWrD5iRKnopLkk3EK4IQbMKRd6NEjDUNMP0863Un2fWyO4ZnBs+XhGOUcoMBx4o4wx
         BYFYn4XpJuGbERQ3I2qqkE5paTxQcy1BEPvdF4QU/uYLCUKVurrwj4E+cPGY4Qgud2C4
         esS7xHvZR8Gco8xmLfJbDb79z75NHVjZS9ZVwhG4WzoQ2BVzc2+c7ek8DuQwKVWkZCDW
         lKOenTZ79bnGlQ7L56vcndkoQXXTkKVymJpsbo6aTD8RQFOk/FwVNbfwAy9lFFZEIi3a
         Oo9o1NMSnuqGZ1kdcfcWxz8I7kyZmUYH0e5bwnc0qWkCc7SKonvgL5Lf/BIO9j4LGNZE
         uB4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:references:date
         :in-reply-to:message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=07aBK6BjS1fdfCvrD03RXobbmQN6Y715A7HNolNjFM0=;
        b=qjTorDmlqV5Udey2Fe5Nk3oPucTRsP3GKIUn70+s+SPWfjvLVgoKTdskcCInbI0kQf
         dCce6TSZhsEAlTTfSc3g3l+oIjz7kGKHK40hCoIG1glH29fjieqYf3AWschUYaJqPm+b
         I5nJ7lVcYODhcYrZx6+6/0d5X0Lkp9isYZU2kLYW2X8CXHDclKaW1g4kJDhQNki/Gz2k
         pdnc0GrhrLkr83ivLNIcl5Z2XNjqpUbRiYsJXHGceSF2TwpN53j4HqI6+goVOIGEaSn6
         P/XdG85MPUZs1BNiqMaX3roEeRDO+3uwr3J3yGm+KByZmoYVm7Bh5iLio+MkISieIFAt
         YrTA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532/kzHIyTxNCRlQ1dkDreotM45wKf6yFuFrIJiL7LcGkWAa41D0
	t0Jm1wHGY97HB8Sp5+T53bQ=
X-Google-Smtp-Source: ABdhPJw1drTq4wz9qt3zqVnl34fgNXd/hhJKQgC1Ng0alfPPefqvSeqm9VHMLmd+vcxVs4ceDfjNfA==
X-Received: by 2002:a19:c615:: with SMTP id w21mr266559lff.29.1605551449050;
        Mon, 16 Nov 2020 10:30:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:90b:: with SMTP id 11ls2555460ljj.0.gmail; Mon, 16 Nov
 2020 10:30:48 -0800 (PST)
X-Received: by 2002:a2e:b54b:: with SMTP id a11mr286634ljn.40.1605551447973;
        Mon, 16 Nov 2020 10:30:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605551447; cv=none;
        d=google.com; s=arc-20160816;
        b=ZUCdODOCw0QM5lyRniz9YOYl7+4Cv6FZqLOveWnG6SPpsZh4yajN677cD9iaUNA7Z7
         qp4J2cNFkSb+kiUYtKvtaURKciNhCzj6hTNdH4pYn81UmsYbFE3jt0QLdXfVjXHKmVkh
         cpSeQTVP+N3LrJ4rMaG98q2eemiKvoPRjODLgV18RPUY8PgSFKPv4thRoCD52QpbCqd6
         X72OnOzsAiwSO8s5BW3X5nAQGHyYqRRw9mfkrmxErdYtgd0t1NHioOFpc/0pQs5P7jns
         r+8oeD87ZTzQGLU7NXF1mSU4yvh0kaSwYNWyI7yFSjK/E6I2pP+yXhv2x3ye9YmpSnIr
         8eVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :subject:cc:to:from;
        bh=TU1z1AcvuEhUoVVxi9U7oinmuwE3ZweXqhITKiFan1Q=;
        b=UjvPMUkYMbn/La86JtPIMYzK+mWX+OtNY+pDqzf4Q2+hlMygAqdXzKFM6KdMtEwVLZ
         M56JS2qCN2LOEaG6xq/6WTWLPPsXi+ETTjzSp9ZYhzg4OKhjpiX+/E9BPqtcUzrWFaLV
         1WZ36pjJEUMFBd/0fCfFTJphydnSU1oNUIXhSWgsIIqP9zr1pQaVl5ECMgixjg9nnVwN
         /xGX4xoTMGNFJ6iWjcy6KlusxWNqHguhn8/YiifhJeDzbegWK9JXzSsCbGL4RXie1AJ+
         V4PlF4iCrAmXq0KcBmgLIL7DZaA27kgLvKFLul1LrOIKI+LsqV4OTsjhdzcgQcu98mjb
         SiuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of whitebox@nefkom.net designates 212.18.0.9 as permitted sender) smtp.mailfrom=whitebox@nefkom.net
Received: from mail-out.m-online.net (mail-out.m-online.net. [212.18.0.9])
        by gmr-mx.google.com with ESMTPS id q189si419419ljb.1.2020.11.16.10.30.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Nov 2020 10:30:47 -0800 (PST)
Received-SPF: pass (google.com: domain of whitebox@nefkom.net designates 212.18.0.9 as permitted sender) client-ip=212.18.0.9;
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 4CZd1L2sZ4z1qtQ4;
	Mon, 16 Nov 2020 19:30:46 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 4CZd1L1fr5z1qqkD;
	Mon, 16 Nov 2020 19:30:46 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
	with ESMTP id 2sLldMLemxsg; Mon, 16 Nov 2020 19:30:45 +0100 (CET)
X-Auth-Info: wpRWNF213h3MGa7UAqzEQHN5/HEAVynfkwBs7YWsrYdgY7k3jknJXYi1b/kpiH+r
Received: from igel.home (ppp-46-244-169-244.dynamic.mnet-online.de [46.244.169.244])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPSA;
	Mon, 16 Nov 2020 19:30:45 +0100 (CET)
Received: by igel.home (Postfix, from userid 1000)
	id F11F62C3359; Mon, 16 Nov 2020 19:30:44 +0100 (CET)
From: Andreas Schwab <schwab@linux-m68k.org>
To: Randy Dunlap <rdunlap@infradead.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,  Nathan Chancellor
 <natechancellor@gmail.com>,  Nick Desaulniers <ndesaulniers@google.com>,
  clang-built-linux@googlegroups.com,  linux-kernel@vger.kernel.org,
  linux-riscv@lists.infradead.org
Subject: Re: [PATCH] compiler.h: Fix barrier_data() on clang
References: <20201014212631.207844-1-nivedita@alum.mit.edu>
	<87sg999ot0.fsf@igel.home>
	<0dbaca2d-9ad0-8c1a-a280-97be01cac2bd@infradead.org>
X-Yow: Actually, what I'd like is a little toy spaceship!!
Date: Mon, 16 Nov 2020 19:30:44 +0100
In-Reply-To: <0dbaca2d-9ad0-8c1a-a280-97be01cac2bd@infradead.org> (Randy
	Dunlap's message of "Mon, 16 Nov 2020 09:53:46 -0800")
Message-ID: <87k0ul9msr.fsf@igel.home>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: schwab@linux-m68k.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of whitebox@nefkom.net designates 212.18.0.9 as permitted
 sender) smtp.mailfrom=whitebox@nefkom.net
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

On Nov 16 2020, Randy Dunlap wrote:

> What kernel version are you building?

5.10-rc4

Andreas.

-- 
Andreas Schwab, schwab@linux-m68k.org
GPG Key fingerprint = 7578 EB47 D4E5 4D69 2510  2552 DF73 E780 A9DA AEC1
"And now for something completely different."

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87k0ul9msr.fsf%40igel.home.
