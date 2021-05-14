Return-Path: <clang-built-linux+bncBCU73AEHRQBBBLMM7KCAMGQE2PWGELQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 04ECA380B78
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 16:16:15 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id l1-20020a5441010000b02901ecd2ee1861sf8070413oic.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 07:16:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621001774; cv=pass;
        d=google.com; s=arc-20160816;
        b=EA+987LbQwW5wkEHy2YElGTaB9A68xcO4I65FqRhhRoFuYLkNKlbrHcMLvnl7WS3Ei
         NgaVZQbFiTOcfFz+z0+eEGtHk0KWkrGvkw86jvgDUnVGxOvDPlFO8KTfvfDgSnAAHBJT
         mxiEvdmWjQXlSrvdhipkFBB1URgUqe7CLMWKVdWfyy8CTHikKeHTuGWft2ULSdSPUCmJ
         Dr6isebagQymZiAsD1/HfbZKP4UIFaR9x5IE4sR2pdQcW9eCIJoetm5HumqJau8GYDs9
         77L/fLvqvRb1MOmmLWH/ndHJhqUXmZWmM8RajnyNoMlZ141BVQ65K7IZGXljZ/SH8k1o
         EJIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=35F9UKFS4c+XbAi9QSSrxoMsFkjGu/nEiX+gJ+81wXM=;
        b=wVEqrt7KmpuITiajcd3GdaH3pbqOoHGBC4BUYhXo430d9L1chrz+wntIb+P6pSvRDf
         Wcx43ogtr1bqypCQbkmy0cMJdHFeW1r5CLwk08JujMPU/nMPpYLTRfIa2CbRSogrJqjQ
         dAGR5oj/iQODApGsqJt8S96a0t16ipOEsRgs4Q60O/llnR1/md20qVkjzkTtOr/fZbwc
         on52vhz0jG4SCVbWAEVgNKkL10AVqj2UiosYSRsBlTH5PMA8KzUPx/TUBlQL9Bba3hfX
         v2JSVLCR0X2+FfhPi72F4rcDSxqGDzCXqp48H5ck5pcEbY6ONDbhqZioYLlO1ELSv+0f
         +TBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=9icw=kj=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=9ICw=KJ=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=35F9UKFS4c+XbAi9QSSrxoMsFkjGu/nEiX+gJ+81wXM=;
        b=sx7wzfmbjkLFk+abl7OhRk+oVFtBC4aB1PXfnX4bH9sQ7FlYzk34VPY+hM3dV1VA4b
         ElLKVDOFh4FZhx4B4e2N8SQ2UlwJcqT10FCB6K/qfkJSHieLsLOSQyTx7S0QkzDhVhuV
         JlP6nPyYHxyoAVWz6siOSaapB2jIzFFn8MSjBYzMPIo3HsmP3DhJC+wMXJ2IJtpmX98Q
         ncgNmntrPqiIShhuyYI++2aaBEhd35U2KVCARivTli2+DVR0C/m0+lCRvb5pEr9WsRAA
         923YmOj2hoSn6olFq5ioz9S4AAWDaVyE3fMCI+lWaxUXGk+dKim3CepwU9kdzW1TGR+2
         Jf8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=35F9UKFS4c+XbAi9QSSrxoMsFkjGu/nEiX+gJ+81wXM=;
        b=O0V+OQAkRSMIrwF5JY0I7zv7ogWL/1SHmTCJruC7o5XjksrTl4P0VCJohA9lRssAdY
         DDm78hLH8iwTceYKDXXgeTgHHmAIUF3jwDql6Vg2UU9dAklpHwkRknZFE7mizkVewhLY
         XTFITtmZfzr+3D9KtPl+uIJUelty6L+Z3azHh3troBLEPVUgBnGmbcNBgiId2zlh+4fL
         vWM0ZCvKbUwrBYSHCVrPdaqU4G39L3JT9wlCMmbl0AxwdjuLEwwcx594VxO1b8lVHYSl
         6h1pL2WoZTrfiNcloPGcN3LUw3FagC31osmwbnlV+z9VAnaRdLOLJ8jE0ZzJnbxHLLr2
         K8HQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532kGvt6N4OSiIa5I17z5gfTlnHWeuiOLux5jWv9UOY6cROeJs3n
	ZnWSg1elmIT7H/bOrTHb/gs=
X-Google-Smtp-Source: ABdhPJxlpFTDSkPIyenHwi2qlJaDa+o4MY1wvfXubYeSoJmDatGJ/A72hHWqTUghHLuoZku88PWhGg==
X-Received: by 2002:a05:6830:1f52:: with SMTP id u18mr26982987oth.298.1621001773979;
        Fri, 14 May 2021 07:16:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:be92:: with SMTP id o18ls626662oop.1.gmail; Fri, 14 May
 2021 07:16:13 -0700 (PDT)
X-Received: by 2002:a4a:88f2:: with SMTP id q47mr10612067ooh.30.1621001773481;
        Fri, 14 May 2021 07:16:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621001773; cv=none;
        d=google.com; s=arc-20160816;
        b=EtvaFO+rHyx5Q+lrFNiuF60L1PC0Y76xF4Zb4S3p31WcUO4s3VxxG75VITORqW2ucf
         1WkkhS2wdsgD2iPP7vrhIfzi0yHyfgoJfWtNG2rkF7qcb4ChfHqU7hvaoqiI6yg3W0g3
         fK1VcNzilDf9YzdmAFTDti74ZPfh6Fv8nMATki6rqy4ZRXaSECyaaEVKM/dKqq6/oNDc
         5obaX49gC7H8UEnKX22Ufob3n62JnW6BiTrOAyV162ozESDfVwtUyz4sS7viw+vQ6fOG
         lsdFCvXT8lqPnfbkYhPG9gNq6BevgAyAOrBZKxUumZgtJ3A6qYCht6UM6bF3EvRdwwdW
         tnSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=NQEdCM9Zv9G6EClXvBLdsEG8XB/HNeUXjnJ6LEc1cSQ=;
        b=ycNkVdxE54y9cAckIkmSb2HLpFEgcSSPk3Vk66+QSd/3fJkl7fPTMiigXaa0OVVtxE
         VL6D7cQiA4dWEh6NMkLZNLnDLJiCljG5HcsIvRqzvJyFhSE23Qmx5ZTStQrvJTxA+a+9
         vMawxL4wg66kqe6Kew95qJqWWiD3fmTtONauWwZP3KDxO/teT7hml7So4I4EcGMV2PHO
         bGu8PXxjluCQTwK2ljHUHaMh3+42TLyUx4kk3wXe8p2fACAkmJI25ZPjFL7uSteT0nKJ
         ul7XYovDMcc8WIIjNP0q1u9iKkiWXW4C9+geJOIaedmAbTh1vwOMPNYamfJfzmt/1X2/
         Dp2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=9icw=kj=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=9ICw=KJ=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x16si588966otr.5.2021.05.14.07.16.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 May 2021 07:16:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=9icw=kj=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9F3AF61404;
	Fri, 14 May 2021 14:16:11 +0000 (UTC)
Date: Fri, 14 May 2021 10:16:10 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Ingo Molnar <mingo@redhat.com>, Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, Arnd Bergmann <arnd@arndb.de>,
 "Steven Rostedt (VMware)" <rostedt@godmis.org>, Tom Zanussi
 <zanussi@kernel.org>, Masami Hiramatsu <mhiramat@kernel.org>, Qiujun Huang
 <hqjagain@gmail.com>, Tom Rix <trix@redhat.com>,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] tracing: events_hist: avoid using excessive stack space
Message-ID: <20210514101610.4392adbc@gandalf.local.home>
In-Reply-To: <20210514140429.3334181-1-arnd@kernel.org>
References: <20210514140429.3334181-1-arnd@kernel.org>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=9icw=kj=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=9ICw=KJ=goodmis.org=rostedt@kernel.org"
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

On Fri, 14 May 2021 16:04:25 +0200
Arnd Bergmann <arnd@kernel.org> wrote:

> From: Arnd Bergmann <arnd@arndb.de>
> 
> In some configurations, clang produces a warning about an overly large
> amount of stack space used in hist_trigger_print_key():
> 
> kernel/trace/trace_events_hist.c:4594:13: error: stack frame size of 1248 bytes in function 'hist_trigger_print_key' [-Werror,-Wframe-larger-than=]
> static void hist_trigger_print_key(struct seq_file *m,
> 
> Moving the 'str' variable into a more local scope in the two places
> where it gets used actually reduces the the used stack space here
> and gets it below the warning limit, because the compiler can now
> assume that it is safe to use the same stack slot that it has for
> the stack of any inline function.

Thanks Arnd for the nice explanation of the rationale for this change.

But I still find it too subtle to my liking that we need to move the
declaration like this (and duplicate it twice) for internal behavior of the
compiler (where it can't figure out itself by the use cases if it can
optimize the stack).

> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  kernel/trace/trace_events_hist.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/kernel/trace/trace_events_hist.c b/kernel/trace/trace_events_hist.c
> index c1abd63f1d6c..e3fe84f017a8 100644
> --- a/kernel/trace/trace_events_hist.c
> +++ b/kernel/trace/trace_events_hist.c
> @@ -4597,7 +4597,6 @@ static void hist_trigger_print_key(struct seq_file *m,
>  				   struct tracing_map_elt *elt)
>  {
>  	struct hist_field *key_field;
> -	char str[KSYM_SYMBOL_LEN];

Instead, I think we should just make str static, as this should only be
called under the event_mutex. To be sure, we can also add:

	/* To protect the static str variable */
	lockdep_assert_held(&event_mutex);

-- Steve

>  	bool multiline = false;
>  	const char *field_name;
>  	unsigned int i;
> @@ -4617,11 +4616,13 @@ static void hist_trigger_print_key(struct seq_file *m,
>  			uval = *(u64 *)(key + key_field->offset);
>  			seq_printf(m, "%s: %llx", field_name, uval);
>  		} else if (key_field->flags & HIST_FIELD_FL_SYM) {
> +			char str[KSYM_SYMBOL_LEN];
>  			uval = *(u64 *)(key + key_field->offset);
>  			sprint_symbol_no_offset(str, uval);
>  			seq_printf(m, "%s: [%llx] %-45s", field_name,
>  				   uval, str);
>  		} else if (key_field->flags & HIST_FIELD_FL_SYM_OFFSET) {
> +			char str[KSYM_SYMBOL_LEN];
>  			uval = *(u64 *)(key + key_field->offset);
>  			sprint_symbol(str, uval);
>  			seq_printf(m, "%s: [%llx] %-55s", field_name,

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210514101610.4392adbc%40gandalf.local.home.
