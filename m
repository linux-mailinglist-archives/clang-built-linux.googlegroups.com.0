Return-Path: <clang-built-linux+bncBC2JZN6WSAHRBHHSX7ZQKGQEM5YNAAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC1E18755E
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 23:09:33 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id f24sf10456612otq.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 15:09:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584396572; cv=pass;
        d=google.com; s=arc-20160816;
        b=G42T5OmozAPLW21GTVAXwnSdwY3mRWGzheyYQgxYyVtuii3oDDZQBP70Rn+fPXF6WG
         wgwjFvFBSqFpr4uyoT+Y0/oYTNsp9+9Ct8I05sdkHjFsWP4ufVqt/wxsqqMF4ntGBHOf
         Wh2qXrhcpVMBWSduFZ6AvRmRMtI9GUrZsPNtK9VC9Wta46YXdFnRXkxhdGjBOojxds15
         2ICDdUBg6x9+Xt3dZszIOe3RwWuEGvX9KZAFqTZRepnWEkMbyaewvKbtTI8Ql9DWrQR9
         zBecVdWW9pf6DIakwBPD/JUw8RZqjkdaop7OrAOVClWyVVme+VdwR+jgPgKotct3NR30
         WtXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=DBgJpZ2VOWeMcRw2PcHAa0SbiH6KevdFtfkC2AGjkp0=;
        b=IGEEXaEfZm4WcdEYtYXHJliMZssxU66wEFxYsRxn4hxEw0vRQjfQ5T8izQ5yvRggnV
         LJzZ6Nsev1iCH/TNvM2FQSIzQFER8RQNWRc8p+wf4vdBlA6GLQEk1VDSoAa3QngUTBKq
         JBsM+ou71+QwBnslAkTzqOBOwaxJ8YUGSQ1es004IDcbs/SihkJ8yrUBTvVA57PtsDpr
         sF00Ihn13xlXeteHmVgoEqmADOWW9LDsSG3SJm9Y60updJMWc+vRgcpWagnl2xkNR57H
         Au//bA6QYjIOLMZD3ED2PB2oAqaOV0zayTNDrenJOY7MnhMnEHhEBlSlUU0uH+Uycp07
         7cSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=oVXJUCxu;
       spf=pass (google.com: domain of bjorn.andersson@linaro.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=bjorn.andersson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DBgJpZ2VOWeMcRw2PcHAa0SbiH6KevdFtfkC2AGjkp0=;
        b=VEkGAOGTJU+wpriHGZrbpaV6kTAWr/aTy8IMmVgYw7lbExqI0i19HS7cVazdSD78Rw
         HeRADhUqoG6gRq04XrGM/4mDqKeJVtgSTSGmpWd0IwHMkY0Q6VvxPcq3EtDfX5AdlKxm
         Z2Z9PD/EXLgtlz2+wEYyK6r1ZD/emhL5tZjoYPZiilXMCgrw7V49DuLPtTN55vzre4fe
         irto3JYk6Z9E7uHMR4d0E1ssdTHNDH8pXBUkyjDunuL17dEzXK87Q0z4d7TtxXVAdtbC
         qB4QIb3Gd5TCV1yXv2zYhMW3Y7QpoL+aPmI9wbkj1Sx7ozGkKQGGsqRmATVOOvfEoH+V
         /iFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DBgJpZ2VOWeMcRw2PcHAa0SbiH6KevdFtfkC2AGjkp0=;
        b=Y3XalzVTDkZ+B49JOsS9puOdIIpFyfOoUgk1NB5k0z9eEQpQvxbZ6QgINV+6F64ZK7
         9oRVEHNM1N7H3m3XkZNDRqI6y16T88ktHn+olufTAiGQfAETQO6mbjYmFHR2ReVLvcwL
         r1bMnWycnA/Y2SLIhiGjcWegIoFXW9sYyxXmRhZO0k1rt0m2YIq454uM2eeXv2yFP3e6
         gfCN83fDmG9bGo847Af6dYCVU3A4gYIDKL0zCOrAF5CL8I4DdJ80RTB5k67Dk7x1/iXW
         7oKysMV/oMK3mmJyMC1D3NBGAQ+aEuh0/QBInL4tSg0moqUz8LN6SGqIGNYhY9QYbEZv
         MvHw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0w+BjZkZ+Frr55tmLSOd95lI5KM5TgPzkVI8TO7wwfbhQUt9WU
	UX3Db2pfjrnXg6sgDTjAhqo=
X-Google-Smtp-Source: ADFU+vsjux2rCQGyfpPPg0wcojY5Ew16iBeAewUBXMhYfaevGnxJZTdffMSZXZZYjYB7mKuPdkLr0Q==
X-Received: by 2002:aca:b9d6:: with SMTP id j205mr1266016oif.179.1584396572173;
        Mon, 16 Mar 2020 15:09:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:fd02:: with SMTP id b2ls3675533oii.2.gmail; Mon, 16 Mar
 2020 15:09:31 -0700 (PDT)
X-Received: by 2002:aca:5508:: with SMTP id j8mr1284856oib.71.1584396571816;
        Mon, 16 Mar 2020 15:09:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584396571; cv=none;
        d=google.com; s=arc-20160816;
        b=0Ig3RgxbWgRxzfvav87L76qGibxa01YQVnbJB6Cjcx8DAXt3Z+3323lWCaMGo6izeW
         d7rkVXgyg7PJ2+5Zg483Kg3TiRD2DSLVytu+A4F+0af7OCcX5U4zB0a3B9Z0HdOmU/ZL
         ntX6iDO9FK+PaH7uB28kD2qs0ii+6IAXvjgF1lFYqZEoUWPGaSH4zYt0rQLhiCKrxYI9
         qN8m7sGImidCGzDcqRDDkw7nF2+Ov1hYuLrjzhObPQmASfj9ht/7sv/RnM8VSMs3YgzD
         OGXusPby+cp25wEpmIOwdBZ6XaRVv5svt36neCAq3Dq6gT+WXb9W1EjlvrGwYUllrNPn
         8W6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=B5SCW2mpwqfmklTei3IeO+x4lJGs0aSMZDQgwcWofPQ=;
        b=aSILONNSNHHRPovAQcQjKswq6cmFG4nwr6BgMEOT9+DFiN2IWbqVJ7omfrzqlDSOup
         HkEW27UlKv8WFCs1NKZ9bbackzKPgJJR9Lx9ZU9pfgubeS98zFTdGJOkB56VhVmGZpdS
         /nqubUMGfMjX2ir/leWKM9jJirRQntDxf8QKgYfO6Ol5lEciDMLc75qtBy+FKc7vdsuc
         HfUB92NGtiBuft/AhUvyv5t/pve5UuW7Lwl5NYmyNOZSIxVofMsb+5Y8J8X6MgFGiuAF
         /YCGhZzIXm/DFXCzWfFotSklCheBa9GzZwdqjoIOS2EbfmC+LmgF5jlKyYZ7Mq1wywYi
         nuVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=oVXJUCxu;
       spf=pass (google.com: domain of bjorn.andersson@linaro.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=bjorn.andersson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id b1si83160ots.2.2020.03.16.15.09.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 15:09:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of bjorn.andersson@linaro.org designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id h11so8634569plk.7
        for <clang-built-linux@googlegroups.com>; Mon, 16 Mar 2020 15:09:31 -0700 (PDT)
X-Received: by 2002:a17:902:8603:: with SMTP id f3mr1228175plo.235.1584396570907;
        Mon, 16 Mar 2020 15:09:30 -0700 (PDT)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id v123sm827164pfb.85.2020.03.16.15.09.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2020 15:09:30 -0700 (PDT)
Date: Mon, 16 Mar 2020 15:09:28 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Andy Gross <agross@kernel.org>, Sibi Sankar <sibis@codeaurora.org>,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] soc: qcom: pdr: Avoid uninitialized use of found in
 pdr_indication_cb
Message-ID: <20200316220928.GA1135@builder>
References: <20200316204855.15611-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200316204855.15611-1-natechancellor@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Original-Sender: bjorn.andersson@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=oVXJUCxu;       spf=pass
 (google.com: domain of bjorn.andersson@linaro.org designates
 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=bjorn.andersson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Mon 16 Mar 13:48 PDT 2020, Nathan Chancellor wrote:

> Clang warns:
> 
> ../drivers/soc/qcom/pdr_interface.c:316:2: warning: variable 'found' is
> used uninitialized whenever 'for' loop exits because its condition is
> false [-Wsometimes-uninitialized]
>         list_for_each_entry(pds, &pdr->lookups, node) {
>         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ../include/linux/list.h:624:7: note: expanded from macro
> 'list_for_each_entry'
>              &pos->member != (head);
>              ^~~~~~~~~~~~~~~~~~~~~~
> ../drivers/soc/qcom/pdr_interface.c:325:7: note: uninitialized use
> occurs here
>         if (!found)
>              ^~~~~
> ../drivers/soc/qcom/pdr_interface.c:316:2: note: remove the condition if
> it is always true
>         list_for_each_entry(pds, &pdr->lookups, node) {
>         ^
> ../include/linux/list.h:624:7: note: expanded from macro
> 'list_for_each_entry'
>              &pos->member != (head);
>              ^
> ../drivers/soc/qcom/pdr_interface.c:309:12: note: initialize the
> variable 'found' to silence this warning
>         bool found;
>                   ^
>                    = 0
> 1 warning generated.
> 
> Initialize found to false to fix this warning.
> 
> Fixes: fbe639b44a82 ("soc: qcom: Introduce Protection Domain Restart helpers")
> Link: https://github.com/ClangBuiltLinux/linux/issues/933
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Thanks Nathan, applied with Nick's ack.

Regards,
Bjorn

> ---
>  drivers/soc/qcom/pdr_interface.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/soc/qcom/pdr_interface.c b/drivers/soc/qcom/pdr_interface.c
> index 7ee088b9cc7c..17ad3b8698e1 100644
> --- a/drivers/soc/qcom/pdr_interface.c
> +++ b/drivers/soc/qcom/pdr_interface.c
> @@ -306,7 +306,7 @@ static void pdr_indication_cb(struct qmi_handle *qmi,
>  	const struct servreg_state_updated_ind *ind_msg = data;
>  	struct pdr_list_node *ind;
>  	struct pdr_service *pds;
> -	bool found;
> +	bool found = false;
>  
>  	if (!ind_msg || !ind_msg->service_path[0] ||
>  	    strlen(ind_msg->service_path) > SERVREG_NAME_LENGTH)
> -- 
> 2.26.0.rc1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200316220928.GA1135%40builder.
