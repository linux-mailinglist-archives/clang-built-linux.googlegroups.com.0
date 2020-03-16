Return-Path: <clang-built-linux+bncBDYJPJO25UGBBK6RX7ZQKGQESCBTE3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A43187459
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 21:59:24 +0100 (CET)
Received: by mail-pj1-x103d.google.com with SMTP id ng13sf1779110pjb.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 13:59:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584392363; cv=pass;
        d=google.com; s=arc-20160816;
        b=irQH9NeC25Tqx6tGMGy8tZJi68+2ZoDFakgdGWvu3AVNmIIpdFsDCDqlKr5HHF4tdC
         1N1+CMgWqZkKJQtKorGm9JGMHY3nSGM+hChVsqNPkoLKM8FK3C28yfEfEZA6Lc4fXQ6h
         sUC0QqcGGnMxfZhenDliBxMAKgrxnjnfub6tY3AL09/NhleUTqiVc+RFPnWtHF+wYyQp
         JyYsbY8r+LcY6ASN75MJMqXoK8BtsoDp6ytlkREXeFffxynZOXUGBJ3Nb5mDXVEnhKWg
         X+NRF0hb5KdVsan2sOlPJy3DhqlYitaTb240nXe5wuVJElyxk22HiQTqIsa51S7CIRux
         jc4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=RH4RbMFovz7WFjzqJC0Ioq4Su99iiXmPA+NK5FCk4PA=;
        b=MVqGphiTr0PaFOSAK2VwUO4OMmdXttyZqjDscmVO6dhYlXqLsfYzNrrmXNuc7u7XDV
         Xl/cwcUCp67/88SZ3+T+V1ZW0IiaTdkx2fjmgl/rfhXm7nYMWMhDS4XnH9Pv3EsFsB+x
         FpqABIDZHqHHTJ9/ws1Ii6ehPK98IEfmTepuxavyEbltrDbSF8A+sqmQEr0mjEYv3sSU
         C2nTkySLtWBOb/HUrTbmGLDmS/EmpVzOOiBI+Zxuzl9GijT0vTZfZw0kLNRNEmEgDzWh
         YPcjbSA564Da9Nc/kcjUyghg+v1RCCz9VGQ6utOjWIUSXhGzhuMUAJVhhHQpma7V8IBP
         OXGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="O8RO/kM9";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RH4RbMFovz7WFjzqJC0Ioq4Su99iiXmPA+NK5FCk4PA=;
        b=pjAIkQqjOvN3zgylX+QeqAiTviIfBDKs2dfT1Z0Wt/YwgrDy3QE0GH4Ovk13DhHxkR
         xWESp6a6F9Xe6eKncEvoyzaR3qKRcC/wsy/GkhyoBvPySXAm8kBm5TpIWebUn2w9EiJE
         LuNXrmtLBS4qsUm04I166V2fnvFfNLCUIoy/Xj/Lq3lYg90vp0v8NbYINqSbVGRmi4FY
         Ig4bSaZRJ04HMd9P1cZXCU/jvYMUNK8E2PVfuhnvZ/UG/LHJ4/vY+yecUd1GanjLiihP
         p5Vft7Q/yM6vjU1y8DW3eQ+H+ZiVRtbs3+S9EMBDvVkxC1DhByhi/OjHq7HAIuyQZ5PE
         +SHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RH4RbMFovz7WFjzqJC0Ioq4Su99iiXmPA+NK5FCk4PA=;
        b=E8jOHO60ykRO4GqBijqzCcCQvje1tPpbfvt0l8F14N7MM5vqNwmIRmj5kdwa/Ihv9R
         Eu9tl736uMHmcxLCDSCTRKEfhvWuYztyxx5oAT8ugGtDo8bdbzsZc5aaPPfPxKjtSfGi
         NyKTPli/+mXdtKcDZpf7ugcSzvh0HeaclaLMoBOo1+7szbWjous2usN3VhGOFJ61nxZs
         jgFljhcNl9SajJDIPINmcl4i6dzApwTUgI08j7NQ6nLUTsGZKMbgApFpAW1FVlKOaZZF
         nrcWm2kcdwI+mVFy0JLk7jQhh4QjXTAwzs9hVHASxAzA5zF+hRtH/NpCO7JIKo365a8D
         13NQ==
X-Gm-Message-State: ANhLgQ0ySm6S91PZgWxLP7ihJZTr5QJpLtz34YJk3kOJWTFQnKr+bVir
	YhLvj3e9isSDKKXZJIPgQw0=
X-Google-Smtp-Source: ADFU+vvsz43zIWMHbFZlx4jHT8pESNm9xiEezwY5CrEfTbZE6W3vcWzAyBAeqsTqcPuqf29SF2uIbA==
X-Received: by 2002:a17:90a:9dc3:: with SMTP id x3mr1461519pjv.116.1584392363165;
        Mon, 16 Mar 2020 13:59:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:b258:: with SMTP id t24ls9690618pgo.10.gmail; Mon, 16
 Mar 2020 13:59:22 -0700 (PDT)
X-Received: by 2002:a62:ae0f:: with SMTP id q15mr1577639pff.72.1584392362660;
        Mon, 16 Mar 2020 13:59:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584392362; cv=none;
        d=google.com; s=arc-20160816;
        b=JD21W2CzwrR6a/pMyrv1Oh2NoFeiCqJh/vEdy1ef+J388dSRjPTQrYh+1lKF+yhvYt
         DtphGs+g/zVIYq+QmlAKFPuW1YOu4a/bor3E9q3wMaxp5HyRuWarT6EGL74Dfv8T/Aq5
         BkBUNHWfeN0goTRE8wmRXzCIQcLSqivbITLdQ55I6MepW/xyMK+AkFwz0mC5kgJqc1SL
         ArTCBePb0ujzi/6Csmr+MkUB9RRMTTpJEn3ts/5NSNBCQP21mBrR6D3+cTCXNHqmzEiJ
         87jN4UVBytd5fQ4xR0mV+7kTQfrfxdYq2pW/vS3w67gumGBVxyjeCd/t5PPGQm8cZsf9
         yVEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DqGyMQCkH44ncWYB9fVh87Q38XfHyDtqZOeFKJMjzzk=;
        b=UIPMiLP5h+j6ou8NsnUKf3nB3J6fEJUAZyvAfrSmija1+QPH2zd+eJa1GSXe6xLD61
         BrGBoUwuphr2X6mCVTBEm8zQXX5tB2ooY4yKPH/EEGQrnTAJbEDaDRZaMkyTQAC/SSd7
         AXUEfyT5FAUX3VVxMpeLE5FpZbB9lRNSG40exOh20SrpnOwodAYQUq/qu0Xsj8r4gd/V
         gdPI3uNthfMI18C3AQNCZwO9rYZr87SSY41xECIUliHwuKdHlEqaL9HoVX/JJvOHeAVG
         jHZCgxDCUfteG3l51KvdJAAtFFWJPPUEh7MSN+3/aLMOssR4mVnDTojhbZeXpfmc0nGH
         zlXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="O8RO/kM9";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id ml9si89759pjb.2.2020.03.16.13.59.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 13:59:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id ca13so9329504pjb.2
        for <clang-built-linux@googlegroups.com>; Mon, 16 Mar 2020 13:59:22 -0700 (PDT)
X-Received: by 2002:a17:902:8a88:: with SMTP id p8mr974318plo.179.1584392362078;
 Mon, 16 Mar 2020 13:59:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200316204855.15611-1-natechancellor@gmail.com>
In-Reply-To: <20200316204855.15611-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Mar 2020 13:59:09 -0700
Message-ID: <CAKwvOd=wUtvRK8LEz6Xm5qnvfRy8G5XTWbXHTdgPwWhh39N9MA@mail.gmail.com>
Subject: Re: [PATCH] soc: qcom: pdr: Avoid uninitialized use of found in pdr_indication_cb
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>, 
	Sibi Sankar <sibis@codeaurora.org>, linux-arm-msm <linux-arm-msm@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="O8RO/kM9";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Mon, Mar 16, 2020 at 1:49 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
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

Yep, thanks for the patch!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  drivers/soc/qcom/pdr_interface.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/soc/qcom/pdr_interface.c b/drivers/soc/qcom/pdr_interface.c
> index 7ee088b9cc7c..17ad3b8698e1 100644
> --- a/drivers/soc/qcom/pdr_interface.c
> +++ b/drivers/soc/qcom/pdr_interface.c
> @@ -306,7 +306,7 @@ static void pdr_indication_cb(struct qmi_handle *qmi,
>         const struct servreg_state_updated_ind *ind_msg = data;
>         struct pdr_list_node *ind;
>         struct pdr_service *pds;
> -       bool found;
> +       bool found = false;
>
>         if (!ind_msg || !ind_msg->service_path[0] ||
>             strlen(ind_msg->service_path) > SERVREG_NAME_LENGTH)
> --
> 2.26.0.rc1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200316204855.15611-1-natechancellor%40gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DwUtvRK8LEz6Xm5qnvfRy8G5XTWbXHTdgPwWhh39N9MA%40mail.gmail.com.
