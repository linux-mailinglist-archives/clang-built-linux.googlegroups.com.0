Return-Path: <clang-built-linux+bncBCL67PHQ6YKRB3E5YCCAMGQE76OYZEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D9C371732
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 May 2021 16:55:41 +0200 (CEST)
Received: by mail-vk1-xa3a.google.com with SMTP id k186-20020a1fa1c30000b02901deb88f03ecsf783267vke.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 May 2021 07:55:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620053740; cv=pass;
        d=google.com; s=arc-20160816;
        b=lOZvd862vP4oimF9qn1q+fKZkFf9S/1hoLYItlq/zg6aTyzyPqIij9Mo1ISQpyJ+cR
         QzuKDWVaBTcqOMoEPYFvMzTllCdaB2/8aykLjws4Ii7TKx5NkjtVaFJSV8WsfuHf1Y8o
         7HlL2Fmpg8TDU9pMzPzImA/obnZRH55eRxLYkIS94xl4BjamEoiigQa9rSZGgDwBQC1e
         wVmGOwsYJG84BgQ15xxPwxIi4M5WeOYqlTo9Fvo2jlZjAm/89Ba5Gy41GZ9KNZoIC5hW
         SOQ80NxYdzuQtUVm/20cYq+6qjqXE3ajIwjBZ1MuUZlKyDW2QlG4RGg1hSFAJUktSCdZ
         sOsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=HXljLGTQxF9cqqKsCyYVq3FMS0S6COQEKHp+oQToM3s=;
        b=V9mmaWFqg1UVra6pOps3ru77OJzaGCccV0FAL9EX4eJDfeRCM+PCf+St/DKXxnjyaX
         8ohcQgNzsF3CnT5ksybjxwzCjZ4T52JJpRA0A8IFcgyJz260ZPniJ26QU1UuWqoguS9X
         Tp9OXGbLUSoZTiDcFys5uLNR0rF6MkDy4RyLpkMsRm9TlGmwVIp6NkCA1gJtbABtwt8C
         YGVX+a5uEy1c1B2VGlYIHXUxO5JGJILwmIKdeW3K4j3dSU+WGYGRxbpFjYvntTxCaxPN
         V94Lu4afVbR8lOyYoEyHeuHeXCWqKg5pNZeBsAvHtaVZQdDMzF/cFEPjpNvvOZwx7AgX
         3Euw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=EEW4oazT;
       spf=pass (google.com: domain of jarkko@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jarkko@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HXljLGTQxF9cqqKsCyYVq3FMS0S6COQEKHp+oQToM3s=;
        b=WyTHb5hYjkDMo3o35D8/l+x/UxfjS6E0AeghQFlziWeF8aHqS2BJ9s0oSUEwI7vFe8
         j0os6aAZzrQehuDSloY6PvzRop7te44RlyWrlgiSBYvykMNhQrkeubn5INMSDsmrlXNk
         puLf+Dygcnh1ioF8lYEkG1BewZoHRQLu7EJAJqw/xu3cZ0ceoR4ohSqtQJuQsc6Mayi+
         jJlGqyxCpj5ddCQvB2hPjqdD3IFhLolQlzgMat1LSJFR/aRP8FeLh8QXaYUqYx4fcvzR
         7G3K+dVsmXRUZWxVVGOpadZ/ucMhzkMuIiquypg5IXIrdvY66buJX+g82RwavZSVlwZD
         64AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HXljLGTQxF9cqqKsCyYVq3FMS0S6COQEKHp+oQToM3s=;
        b=ZcZwAHaSTo7vXMB1VnVHzuMJwr6LQAe+Tx2mu5sXweN3Apc5jj+Sac0tWfAUP9P0sR
         v1dL5PxXpPU11LMAdbL9MZo+77e5X7eT7iIR1cIAhk0+BpEf3aAsVjqo+irooWLhyBeS
         Yh99jeT6q4nDSu2Ax0fAfy/aOF2ZrMtd4F7CYG41ixuD86uRxTPyaXJvbFjk48xNY80C
         VCo+gsIQ8Lnn23mVGgkBQ4iGPV9Bvvc/D0/tINsp0313srOsVcdJFzF2TAaln2TaZOf4
         39iPj2nSeCMpKuojL/woOOR26uudSIAIMYiRZHAKHgmn5oNkusA6C9rdAeESRVzU8Nv4
         TatA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5328+hpKkFamh6jE1oDzA4UiYpNMlBz4Nxk008Fg39guKnhBP0cw
	66zNLjWJYkvBsV9U08UnHkk=
X-Google-Smtp-Source: ABdhPJwL2pAfFKvlG4RXgl6s9rCxxrxevOZ/3wlYoihVlZ9arVT1ndxlLPxZlc/m5d+6ff6SGk0BnQ==
X-Received: by 2002:a67:7c3:: with SMTP id 186mr16350186vsh.16.1620053740825;
        Mon, 03 May 2021 07:55:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:98:: with SMTP id t24ls2606411vsp.3.gmail; Mon, 03
 May 2021 07:55:40 -0700 (PDT)
X-Received: by 2002:a67:69cd:: with SMTP id e196mr16485020vsc.54.1620053740379;
        Mon, 03 May 2021 07:55:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620053740; cv=none;
        d=google.com; s=arc-20160816;
        b=JocEpSQ0DEq52rzJ0n5zXqBjPwgQviWRETZAzFwIhPMfj1lLmRYhapbwjKBIisp6w5
         E0Lryge8GA1CpDaAfOG89OhwonZZPvQUfK0q2hAJQTn8qGVW/36SYimL7/iwXp/a9wlg
         XlxF3vS+AvbSQPTVBT4LQi6CZJjyvO8hlBn/fuU+tgCcicz/gMrvOIR/e9vVtkaMo6R6
         m4h8FWtciwWF1YOVNJ3gVYuMJnqq8D1Ir6q+kL1OEVVVYASBaFaosal3c0kbpPUFKwtj
         tb8vJ1HzlHWlh2sQDOAPj35ovzfku0KCSk2czgTJtOzVhdo4EEFPUDVqgGvRQLjtFqBt
         L70g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=/OSoJTrkPCvBF61Ri6jCNBmFa+OIsdWp7ObCE9MVTTM=;
        b=IcdwWoIR93xeUFTwVmZji4EuudcgL/W/dmehK7YYe68AgcAluqDseyQNd5Y3cxauQI
         brpadKvxWHG/e5h1t/yjuSIwHYdyk03AioH9xK6KKntCs8JPqm6EPKzHXl5S1oKd49KQ
         i1XccoIldM2/HO/pVySocnWwsFaz8P2hSWUs0uW0rEVPmnLsct0zt8jtvWDQKVyRcB7+
         w57Wvl76gCkQi6p2j/TAobqOXoFofSl5BJTW2LN4Vquj9RRAOx3R871P1UdGvPhqP/wy
         Z7H4ERPv7hbAalLDkCD+HjMnAgsu/9n+LaukoTMY4YyuGz8X68DrtpvOtlNRhAdUWWSl
         n2Bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=EEW4oazT;
       spf=pass (google.com: domain of jarkko@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jarkko@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t11si1025987vsm.2.2021.05.03.07.55.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 May 2021 07:55:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarkko@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id CCF53611CD;
	Mon,  3 May 2021 14:55:38 +0000 (UTC)
Date: Mon, 3 May 2021 17:55:37 +0300
From: Jarkko Sakkinen <jarkko@kernel.org>
To: Colin King <colin.king@canonical.com>
Cc: James Bottomley <jejb@linux.ibm.com>, Mimi Zohar <zohar@linux.ibm.com>,
	David Howells <dhowells@redhat.com>,
	James Morris <jmorris@namei.org>,
	"Serge E . Hallyn" <serge@hallyn.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-integrity@vger.kernel.org, keyrings@vger.kernel.org,
	linux-security-module@vger.kernel.org, linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] KEYS: trusted: Fix memory leak on object td
Message-ID: <YJAO6SfreYLxOOpn@kernel.org>
References: <20210430113724.110746-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210430113724.110746-1-colin.king@canonical.com>
X-Original-Sender: jarkko@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=EEW4oazT;       spf=pass
 (google.com: domain of jarkko@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=jarkko@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Apr 30, 2021 at 12:37:24PM +0100, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> Two error return paths are neglecting to free allocated object td,
> causing a memory leak. Fix this by returning via the error return
> path that securely kfree's td.
> 
> Fixes clang scan-build warning:
> security/keys/trusted-keys/trusted_tpm1.c:496:10: warning: Potential
> memory leak [unix.Malloc]
> 
> Fixes: 5df16caada3f ("KEYS: trusted: Fix incorrect handling of tpm_get_random()")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Thanks, applied.

Reviewed-by: Jarkko Sakkinen <jarkko@kernel.org>

/Jarkko

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YJAO6SfreYLxOOpn%40kernel.org.
