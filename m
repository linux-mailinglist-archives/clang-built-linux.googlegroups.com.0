Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBF7YT33QKGQEOSHLDBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 129151F9F43
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 20:21:12 +0200 (CEST)
Received: by mail-ua1-x93c.google.com with SMTP id g2sf7483219ual.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 11:21:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592245271; cv=pass;
        d=google.com; s=arc-20160816;
        b=DobG2l9wxOeSlaU94uoUVKB0vNSonXa6GMqXJlsVwctbLZmJMFU6mQkrQrFWuSOcpW
         tbpW2OiluiLA5lBobwd1sgNeyqxZL2TvzOoZ/LJnTw9u/lM5RgQpOU+4WvMQxX4qCWpF
         20r/Dj26ad86LNJ4PAMoT9Gt2n+4hBNALXo6nIOxUHoDL6fA4Hvh46Ipi4QUObLmJJ4G
         pGZQFcCH+CGBuZGcqLCP7bzY8YJHrsc97iTiSy65qC95LfYOaRlGQLX9d8dMKcMKglH0
         o9MveJdKUQBk/EGB0FdnofMJBydpsxC61EXhyv+zbAfNNyGAvDPCmLfPJMLOPIwn4t74
         5UVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=unIdrazyJM7t2vvArKj8lNNmAKylS76RV+WqVCyim/8=;
        b=toQ9cGrJBy8dkCi/9uZa4EwBsm4CJXLCk/HB/n2JrECbMyjlDXzKjxPpbYue++7Mz2
         fAJeP+PGvu/9OQp7OaLZYfyW0Wq+DmsEw/EUGTGZwCVRqhvPUmkcc84LpAEbuOJA9JhM
         KpWKGzwJdnVH8SaepUwJrNZ/vF7pn8fMR9WoIDug4kjEiLAmgT52zP/PcphCCPwosLCD
         Tvby/t+OX/1VkmsVLKx1RiVUCT9E1IjcxHxJ5kb5r6Wq2JT7HWsGlNkpVALqB3v/SDQD
         SMBq1UK8hOLa9460fY3HmLfhSxDZgocQ/DBiKCUymhYc3x0RaCSdmqumZLsMXaqDQWGW
         rBYQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ZbaK4P3H;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=unIdrazyJM7t2vvArKj8lNNmAKylS76RV+WqVCyim/8=;
        b=LeFeZwji+0FeU9n41aePzTvKsLW9+DSRDC81Zq2mnfOKal2mrmuQQiey3PgXZP+Mfb
         McBO35TW0RxUUguO6Gjm72aOO1l+EM4+cYI+3l2uCFOJpPxIDsH2UUln7MJhd/kxYQ6C
         XoiMUvo5/lF588TKTl/km85GQx0BX6A3YqfxF+qIcKk1AxhDvg5+PTiaRumsDJ3U9brn
         eKhk4D41jWDqpDeJDeK+zCwCJS5jiBahzNtk8dME4dE117ltAeof5AKzzcQES3W2fkEI
         LERUiKUp6RxqPb6oHKm7nDYK/X4gYtwmS9joYBxPPw06A7y89uPD7WPfoGsinTkIdGqx
         8Ojw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=unIdrazyJM7t2vvArKj8lNNmAKylS76RV+WqVCyim/8=;
        b=UXKd+jAfaOKE8QQuRUf8aBq8L413sI0qJ7T6ggE1RR6T9LU7rEYe3ewwmaM4YL3RK9
         c3dAsVWRL9VaKIsw9wDJqWSHRk6iUqNYE04CDUrrTk6sPuBK25/GIkLuDdZpLZVXBFgc
         +KiIvNbhfAPBUztugCbLSBdGIOXYhSUsNeDMwvHNXu9IOXQtdrNGnWD9ur7jXd+1C/g6
         gjkQXVhwPXKJx+ofcLU+S5ZeOvwHAdrLCQcYTulYfPQeSNArZnMVPIEX4O+Tzio+lJj8
         p3IeWBIRuppZBYzIup/8cxFiUb9aKcbi/1omDyb/2ZCnJ343Pjxa3pDtJJeTnPc1vzuF
         Czig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532QKgMzxLGKXz3gBxENGZp0hYZiTIeR62VSJ+XE4TcHSq4R88oj
	7Cy4Y+f5LH/9XcoUhyn7hQ8=
X-Google-Smtp-Source: ABdhPJzgRKrxdYktecX1tPaIK0z2UgAYX7JsGV3TdzmCMM1UVMXZhSXWdbLLrjRKFR7A1nqkf8Kg9w==
X-Received: by 2002:ab0:73c3:: with SMTP id m3mr20587498uaq.34.1592245271079;
        Mon, 15 Jun 2020 11:21:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:6e47:: with SMTP id j68ls1577167vsc.1.gmail; Mon, 15 Jun
 2020 11:21:10 -0700 (PDT)
X-Received: by 2002:a05:6102:21a9:: with SMTP id i9mr20024621vsb.109.1592245270736;
        Mon, 15 Jun 2020 11:21:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592245270; cv=none;
        d=google.com; s=arc-20160816;
        b=lbc5ZbKi2DzY5IcGiWx2f8GUOG9C6rWq4o3vwLrb8RAx33vZ1dVaS02xK4CpW1FVjp
         HKjmgKl/W0Z1F6Vf+IrBwayKju5dD4Q3iIqHz07ot8+SgG8Drui6/qKzWSyfSBQD6TID
         8/1IyinoTVEEjsQqNuxtY0CUgwaadd14QNm9eTV3ekJQsiWrojR0FeaMKupgO/d5qb0D
         uopBGTm9JYQ2snxuUGqgEjsBZP2SHZcVy9A3YKiR0HQcEAPvi79ae23D48kOpiwBWQJd
         ouKeUsi7rSFFq00/IRRqk2bFhHHjHcY+3pual64iZgY+t3vpMlWKB2RsuC/BrOPa65Gj
         nfHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=LemJIWusSKTs9kB/F9oxsCC3XddFJYsF1dwWH4aB1F4=;
        b=shK5yA2kfIHL9F8iWfd+sQPoiK1yexO/AshuldwTmWA6KbI1j88/CRGGIMxm38kj3e
         qqsoRZyw44xxs/qDq50WyPVKrryGqAmEVXO22synIi1rqwAzFj72GC6aEMWxuLpuNmuM
         n4iY7TkiIZeMbpqFxUIK2Hs/hpVcnlBlG5o1hrRRK+RYL2FSuwqxpS1SDcv8Kk6GTHpP
         oXlbwxYK6BjLUdt1GmlHqi7hSnjoH861H4cde6VHxeWfr7zigT6Arls06rrsT47YbViD
         vWsxc/Lu9aawPpEY44qlhed2YBMp+wGOycg+YtnciLzhtCqT2lqgwXl8ZoQijvYwBOsU
         Uv4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ZbaK4P3H;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id t9si939250vkb.1.2020.06.15.11.21.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jun 2020 11:21:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id u5so7945355pgn.5
        for <clang-built-linux@googlegroups.com>; Mon, 15 Jun 2020 11:21:10 -0700 (PDT)
X-Received: by 2002:a63:ea02:: with SMTP id c2mr15929639pgi.66.1592245269889;
        Mon, 15 Jun 2020 11:21:09 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id d4sm181377pjm.55.2020.06.15.11.21.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2020 11:21:09 -0700 (PDT)
Date: Mon, 15 Jun 2020 11:21:08 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>,
	James Morris <jamorris@linux.microsoft.com>
Cc: David Howells <dhowells@redhat.com>,
	"Eric W. Biederman" <ebiederm@xmission.com>,
	KP Singh <kpsingh@google.com>,
	Casey Schaufler <casey@schaufler-ca.com>,
	Thomas Cedeno <thomascedeno@google.com>,
	Anders Roxell <anders.roxell@linaro.org>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] security: fix the key_permission LSM hook function type
Message-ID: <202006151113.7A2F638A7@keescook>
References: <20200615181232.119491-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200615181232.119491-1-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=ZbaK4P3H;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Mon, Jun 15, 2020 at 11:12:32AM -0700, Sami Tolvanen wrote:
> Commit 8c0637e950d6 ("keys: Make the KEY_NEED_* perms an enum rather than
> a mask") changed the type of the key_permission callback functions, but
> didn't change the type of the hook, which trips indirect call checking with
> Control-Flow Integrity (CFI). This change fixes the issue by changing the
> hook type to match the functions.
> 
> Fixes: 8c0637e950d6 ("keys: Make the KEY_NEED_* perms an enum rather than a mask")
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Thanks for fixing this!

Acked-by: Kees Cook <keescook@chromium.org>

I wonder if there is any compiler option we can turn on to catch the
implicit enum/int casting that would help for these kinds of things
without absolutely exploding the build warnings.

I see -Wenum-conversion, but that seems to be between enums, not between
int.

I see this, but it's external:
https://noamlewis.wordpress.com/2017/10/05/type-safe-enums-in-c-using-a-clang-plugin/

-Kees

> ---
>  include/linux/lsm_hook_defs.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/linux/lsm_hook_defs.h b/include/linux/lsm_hook_defs.h
> index 6791813cd439..24f6683f1cfc 100644
> --- a/include/linux/lsm_hook_defs.h
> +++ b/include/linux/lsm_hook_defs.h
> @@ -360,7 +360,7 @@ LSM_HOOK(int, 0, key_alloc, struct key *key, const struct cred *cred,
>  	 unsigned long flags)
>  LSM_HOOK(void, LSM_RET_VOID, key_free, struct key *key)
>  LSM_HOOK(int, 0, key_permission, key_ref_t key_ref, const struct cred *cred,
> -	 unsigned perm)
> +	 enum key_need_perm need_perm)
>  LSM_HOOK(int, 0, key_getsecurity, struct key *key, char **_buffer)
>  #endif /* CONFIG_KEYS */
>  
> 
> base-commit: b3a9e3b9622ae10064826dccb4f7a52bd88c7407
> -- 
> 2.27.0.290.gba653c62da-goog
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006151113.7A2F638A7%40keescook.
