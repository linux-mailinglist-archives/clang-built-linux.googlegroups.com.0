Return-Path: <clang-built-linux+bncBCL67PHQ6YKRBV4S4GCAMGQEPQWNCCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 249A3377886
	for <lists+clang-built-linux@lfdr.de>; Sun,  9 May 2021 22:43:05 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id j25-20020a9d7d990000b02902dc5a9c492esf7062298otn.10
        for <lists+clang-built-linux@lfdr.de>; Sun, 09 May 2021 13:43:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620592984; cv=pass;
        d=google.com; s=arc-20160816;
        b=ENrYo/q5dsTZYRV6+VAfAsKs2bP+tvIbYahTY0gmGj45vA/gH/Yfti2x8mSALESQrT
         U256UQNxEv6ZjtImxuQT8ckFO7WScUG6UDxaGGvebJRcJnYXQ2QeKigKmOWOcsgl+Y7S
         OpOUiTfrYm28mBeCHsupgTryYRkI7jBYZAbmGVcuVxjHiAC5aZYrKdj2zyBpgGX3dldM
         4wFRmttVUi8Z5UrOYdLLIWgyVGcWAltWzKUq6pkPtr9JkiX2Py+3mNaMMQuplX7h95mC
         L3/ubXh12a5zIHKTfBSHrEN9ZCzi5DBAU+DZY/TVLJLyVV5wPymcr5citQjNqA1LX0YO
         XnHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=yds1ydE5xajBAedKswPP/CIuR9oGxcsKHB5FgjDZEuY=;
        b=T7Cbg6KL2A2sEK9JMBp/Bho0jgsT4TA+BBn/DQ1LHgowMdWTPhi64FeasRZD1LSB9e
         sxbAEZH7fpFTKObSS5nYI19NZ6HgmyrKpQPh8RnBoke3ns3Iq4S/nTbVoR93P1dhYOzK
         Pcpf3lkDdopKQ3RocC2stOpk3K93TBQvzVOA8znzm8JjFm4AepnAmq2LuBjEougI2A/c
         lFIJte7MTRBCRKjKXOZ8pBNnHarWoqO/51aaFhtEiE9rOWbV5bSFG06oSYQvT0hLBTHc
         PEx3dnab+nVyI1FrsPSb/Xa7Ex0vZc5GF1XmUisOQDJAYDpNEoTPqFNF0yQART3WGgs7
         VP5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="rdTV/Oz4";
       spf=pass (google.com: domain of jarkko@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jarkko@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yds1ydE5xajBAedKswPP/CIuR9oGxcsKHB5FgjDZEuY=;
        b=GMfezRqHd/daSLC0mx0Sn6tlGREAQ0fyUK9AHEXsIm8/BpXjioBlTAhqh5d/zEcEM9
         d7Ev9Fs7iQDII0bDXqbLdPKz3Rc0Sg/CW/VlK3bZa02lbekHtt7dmdlywalzQj/EhQ/X
         AgNtDfGBdLLOL9clBat3DhNnO8jzFW6HKTp5/1XWA23CDbIVWVEwEiV+DhzDN5v/3Da0
         IB4QHeBb5eWtzIZhrdSrxMxjdMZKqzghE+XksK9DSx+jv+yFoFH+CWIoSgHQE+zh54Cd
         erYrEtIgAC7wCFLEU7GfBLAzwfAihbUk+1B9Bq19eEhnsE8yGkehmgp/nuOA/69RKQev
         ZHmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yds1ydE5xajBAedKswPP/CIuR9oGxcsKHB5FgjDZEuY=;
        b=to2y9GwM4/uenkfhGTlbqLA7aZoGNmpyXxVXe2/j83UsnOLXrdK8grYSPjjtF0GqKT
         IuLHxYKfVfJ4+yc7xgNjE7aV+V4+nqtAsid3iq9I1a9DjMnPZpZPyrKSjZ28SfM/K5DP
         QLVXyrddwe3XAjYxEQi5Inas4XJl1qpoEdo+Ls+XL7VCn/fJfMAkpxBllGCGdmdvwJyF
         cnZw1pG/5tC12eTiCt6oHm9XqjcnHszR9D1NTQVd7ZVd2QfJmeVO5qAPtK9ir64qe1UI
         16MyK9cW9exs5XfGCXKDp1wvUmCFyyY+s7NmExlGteZnyD1wbTZIlZq+oDDblsAyd5rt
         XBcw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533+JbkeaK+/0h/jhVA+pzbdqgqmUghgDyuMW6+TMzgHU+C7NNB2
	ZoAjoKsytQ5CpDYQc4PkRY4=
X-Google-Smtp-Source: ABdhPJy8Ot+kM/gzGQYPxyyAo929XNtVJtg8FL8QgkrXiSVWq+r8xQFK663rZiVpmK01Oy43tD1itg==
X-Received: by 2002:a9d:2041:: with SMTP id n59mr8084799ota.37.1620592983816;
        Sun, 09 May 2021 13:43:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:c508:: with SMTP id i8ls808692ooq.6.gmail; Sun, 09 May
 2021 13:43:03 -0700 (PDT)
X-Received: by 2002:a4a:83d3:: with SMTP id r19mr8823114oog.53.1620592983492;
        Sun, 09 May 2021 13:43:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620592983; cv=none;
        d=google.com; s=arc-20160816;
        b=qWru/9uWWEezYMrnZVN8U1MHnlLFjwY2j3EF38ZhOQuR6ZKr3jvcZce/Ez0WnnFpgn
         IVQw/zbyK8/k4LZYvITxG/UT4QxlXMAiUDudBMnYA5K1yHTk+sU/sh+h9yNXP6EjJ8mL
         vITaVD3uTRwCll+iUwANSLK/vSoKwxCNTj5zX3zifOC3iKDjGYCxNf02LsQ5UzInBAKJ
         rITpOZgwgxQdPnkoWQoiYsLEjPvrUjiZ7+O8FOOqUkIKrXDfL8nq6ka/QCDW3FGTVcK6
         at+kb9ZBYvHJWWz7YpXm4hL4BphPLXm9w901EtgynphwfjXmPa/KOWBnQwo8uCWmGuzA
         Xiqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=qtWvP1lOh2QsCb3PanpgLSgz+niTgF0ioXvp+csZ8wY=;
        b=nO4MSu7QcF3t2PnavKwiAFb11wdiv7qB0fqnqZqnknxzuqrsm/mk4k8WcCjKOTwvri
         CKr+kwNrzxHBwU+AwrgaNc4fbODJiwqBXp80QKCvGrVCHllyy6VcHS/TWE3Zeu5W+qF1
         lgNA6oPxHZdflH55QeztYKIpGV7b3sev9l4JNLDpZg9AbpqWvHpRnO+VgcLWK2EZHTek
         iItDRjVC0FEAOQkYwHnlKhYF255hTkq5SN6cEEef+uDpjKUBMxk5uY4Ox9fyPyOh5aCf
         h+JuO3x3vUCpFtsbtxdQDhhVR1qaCU5w5aafoPLw8uovRlDI0+i3Ib45+Gdpv79skO/A
         wfAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="rdTV/Oz4";
       spf=pass (google.com: domain of jarkko@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jarkko@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l24si1400577otd.5.2021.05.09.13.43.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 May 2021 13:43:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarkko@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 31AEF6135A;
	Sun,  9 May 2021 20:43:02 +0000 (UTC)
Date: Sun, 9 May 2021 23:43:00 +0300
From: Jarkko Sakkinen <jarkko@kernel.org>
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: dhowells@redhat.com, jmorris@namei.org, serge@hallyn.com,
	nathan@kernel.org, ndesaulniers@google.com,
	keyrings@vger.kernel.org, linux-security-module@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] Keys: Remove redundant initialization of cred
Message-ID: <YJhJVEqIZAkU9xzp@kernel.org>
References: <1620467481-110575-1-git-send-email-yang.lee@linux.alibaba.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1620467481-110575-1-git-send-email-yang.lee@linux.alibaba.com>
X-Original-Sender: jarkko@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="rdTV/Oz4";       spf=pass
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

On Sat, May 08, 2021 at 05:51:21PM +0800, Yang Li wrote:
> Pointer cred is being initialized however this value is never
> read as cred is assigned an updated value from the returned
> call to get_current_cred(). Remove the redundant initialization.
> 
> Cleans up clang warning:
> 
> security/keys/request_key.c:119:21: warning: Value stored to 'cred'
> during its initialization is never read
> [clang-analyzer-deadcode.DeadStores]
> 
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Fixes: 'commit bb952bb98a7e ("CRED: Separate per-task-group keyrings from signal_struct")'
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> ---
>  security/keys/request_key.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/security/keys/request_key.c b/security/keys/request_key.c
> index 2da4404..873c31f 100644
> --- a/security/keys/request_key.c
> +++ b/security/keys/request_key.c
> @@ -116,7 +116,7 @@ static int call_sbin_request_key(struct key *authkey, void *aux)
>  {
>  	static char const request_key[] = "/sbin/request-key";
>  	struct request_key_auth *rka = get_request_key_auth(authkey);
> -	const struct cred *cred = current_cred();
> +	const struct cred *cred;
>  	key_serial_t prkey, sskey;
>  	struct key *key = rka->target_key, *keyring, *session, *user_session;
>  	char *argv[9], *envp[3], uid_str[12], gid_str[12];
> -- 
> 1.8.3.1
> 
> 

Reviewed-by: Jarkko Sakkinen <jarkko@kernel.org>

/Jarkko

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YJhJVEqIZAkU9xzp%40kernel.org.
