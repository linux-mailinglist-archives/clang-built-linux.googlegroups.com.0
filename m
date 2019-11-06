Return-Path: <clang-built-linux+bncBDEPBSN75UNRBQVRRPXAKGQE2VPNTEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA71F18A2
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 15:29:23 +0100 (CET)
Received: by mail-qk1-x739.google.com with SMTP id a129sf24849415qkg.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Nov 2019 06:29:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573050562; cv=pass;
        d=google.com; s=arc-20160816;
        b=SS3Fz1+KthxrHei4hLQ5td6qAlSzXtygTmNVpCmuY1l5A3b/1TPJNJEYUJym6209GY
         9Ho7klW0JXBTJ+w/UsPcECtgnHxC5kAWv+hHXuYsqQHO/DQDnTlBU1ojasmr/G5353wj
         ywUZigWhERvvqOs5evoxK+dyg9E0tVMQX+Ye/QHThLPs0l0FEAW4SLxXuMI/DDMC5v2M
         okr7sVCpwLX3Nhnrroji5fpMUFOT0Jat0ScZ5fZS56e4P52UxdshpNOtMooKTHRZG4ft
         YAkGfioOBljLZ6ltPFZAItlrKNyHLha6OCisuBZ26Ov+j057Y9jXsXd+tDjJ4d5TA2XV
         uOLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature:dkim-signature;
        bh=PhUriUvPgh8ExputUN1d1ADtyp3VreQicQrFUCmvrhU=;
        b=Tnrw4Wm4h/6chchEtBy0QIQQ0NP7rAv6sYY+trl2xzWVdKNzq7F63VdAmUWPR+vxp0
         pXi5fwytmKu0ZokrGby4ykDLiFdgXZk1riYHV8eQnUuDiMtnrzzg+ckKWC57JovvhP+5
         uO/X5hPQrjXO+sSsbZpxBMq4s9n+j+yf3aNpAdvH2dXVN9pX5ahe+0K/x3fCUjcU9eCB
         B+C5+NyigkV+0HeUorTrxBrhs7uwBi1kAJ0K+BPFqLdcrJ6Do0kLH/SopCOpI7xf9y2r
         yff/Bc08OwIpOIbxgJxAwjaGr9ofukYC6dKxxZX/32qKSGjUwcbLWrr+uy1VK5FT4dW5
         gdCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gXrtET1T;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PhUriUvPgh8ExputUN1d1ADtyp3VreQicQrFUCmvrhU=;
        b=oW/mSjfzK9SHekvZpHYgh7OGjNa2Z9vKO7XTVYbmue3wUpsxKIh3YjYKRSqF5UF07+
         WxcoouLp+CButmD/6wvbFo2gxkUQ6FmVVbS+3MBm7LyQ1+J9OxRo6KkfJuTpRGma47wW
         jFNp9NgWs8M4YcBc9MsH8AnGe8MiYymdDJRVsiQt6KwQVAKf2CeKor1MmtgbWoDoCcBW
         c/cEbOMuS3oBUE4MBnPMqmtXVzNWx8BLsVuKE4msJEPf7umeFN7rlagNrGD9SVoSlAMk
         1E0lF5o3cdU0+JjIQsSysMikZnlRpPN0eTXKhVxicT5oTONidJngEMS4O3MVqx661yPt
         VQeg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PhUriUvPgh8ExputUN1d1ADtyp3VreQicQrFUCmvrhU=;
        b=lhZVOQ2BNo1YdhqqryAFFd1DjTOWgOoSBNNEFU2GxKoAGdyIOtP9HY1SOuw50Ngm8g
         fWVTMwzZzHyo9f2eCVoXB0Zc2rtk7QOCkODmalQc5KnCaRs1rxvcAwVmXslJhmI41KsM
         Gb20DTB4SuVytR+36gWlW3TpeXwfx0z2MwAoqx5cFLfJzcrXrT4XXks1WnqqJn615yCu
         fOl9YyKeJhTPZiZeK5F3o0z6h+S6Pc5gpcesLo1Tm5yKdYthONqs2YuFC6rZcweb94qO
         6afqqE/ixWMnILcio7rp1I9LBlCWoYOdL314Tha05MRk4tlwOurp/LxLOQxauoTR8G+i
         pTMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PhUriUvPgh8ExputUN1d1ADtyp3VreQicQrFUCmvrhU=;
        b=e+yVODhWMDtXR50slHOtu4eakEr6u+KrbAp8Nm8IP66Q28e7Rr5uPoRMYj4Cc9CEOD
         bWYV2xarYqrxzrnn6vH3hcJZc4qPdwAhJrhyvSNJyqkFT7pxn8kyMInDlXmSCpfIZHFy
         W3pqBWg9ImGM0jkaLjN6F00n7Q1h5e0Oca4NcOOJYTlEylCnfkVmpnH+3viPwtyF1PTN
         JUt3Vix+ouT4pdcC2SCZUpSX4W67HiefI9dgE6sDjYRhbxXYzH7RfPSr6o9G66Cum9Sd
         kV90xQNbiCAgy3LS+Kp+CWDMFbkxsbQIHIqITupzAs0HZ1MpK/eJIDxPz/pJtrCb4krz
         MFXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXWthWKZyMvLg+0VQ9d/OyVraKyJfb4Cmt4xOLW9Nm9HH5Ko0BD
	y3h1Wn2Mgx8Mb5fZ9E8QBUw=
X-Google-Smtp-Source: APXvYqxNcUCE3M+B0htw54GSGBeDLuLYM+fHeKQGaCtXPX/9SJKMY7iUEWybkHaH4JdIIsyiwMfw8A==
X-Received: by 2002:ac8:2632:: with SMTP id u47mr2572147qtu.54.1573050562419;
        Wed, 06 Nov 2019 06:29:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:95c:: with SMTP id z28ls690765qth.13.gmail; Wed, 06 Nov
 2019 06:29:22 -0800 (PST)
X-Received: by 2002:aed:2722:: with SMTP id n31mr2551552qtd.98.1573050562120;
        Wed, 06 Nov 2019 06:29:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573050562; cv=none;
        d=google.com; s=arc-20160816;
        b=KFXJ67nkqFJn5cxap0fOz/6b2w4mW+75toehs7AZSfHVmaZtCGgbozgHhDaXK8HFM4
         A7NUeT6iJVEMEPBg8rhAYN3SUT6N0VSlYh75Q6OvA7DyTQ6vznE5W3OT1yxF4mBRMFcj
         8e6157Rjyu2YHUKwicE9EIG57VAzYZ13Dc0oeqPK4eZoqqkO9bF9srAujjsdaLYP1cCi
         1Y9bk+7xGLfAr55T3UU6NHCE5G0lPqnQMZoBRABrc3CY5q+83ZUmolFven230RnyhGD8
         uBvtX+B7mXYSFh0JHyoYhg+xC033AyosR7NkbIPljpuNrJkP3+NNbmQN9wrQc/5CnEit
         RMsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:dkim-signature;
        bh=2GATQh9QnxiyjasbxBbsJNEOf41Ei8mi8CHA7O3/c2M=;
        b=bMz8hvoq0z+j35DG4dxA5hx8RWhEN4PNxPEFeQjmWx2eHRRrqMLYiUfhA1ATYJMn5u
         im4ONxuAIAkvKYxJuiBy09fqVhv3RA9pz6W2Djw1K2GnSSW+YdEzxr0E44gHhe8kC2OZ
         b19470FZdvf2Q2omlQc6dSfbgLzZM7P1/mBR2B61WKqQlWM+jOsQEuIu62mrFC3GWqxf
         aUgmAuD1Ck85KhbhufnZAUUx4YUYdDMx5bAOs0wvjMHWhNlEf9RdX53Ezi6fzkjQqLE+
         VlLgyshRXTM7kliPs2AJRwiv9PXm60OtbKM083I/CWKsrhHmHncBcdXxrFqO1IE/RmRf
         JEjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gXrtET1T;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id j194si181457qke.0.2019.11.06.06.29.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Nov 2019 06:29:22 -0800 (PST)
Received-SPF: pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id 71so24766969qkl.0
        for <clang-built-linux@googlegroups.com>; Wed, 06 Nov 2019 06:29:22 -0800 (PST)
X-Received: by 2002:a37:de13:: with SMTP id h19mr2179065qkj.193.1573050561658;
        Wed, 06 Nov 2019 06:29:21 -0800 (PST)
Received: from quaco.ghostprotocols.net ([179.97.35.50])
        by smtp.gmail.com with ESMTPSA id x133sm11773819qka.44.2019.11.06.06.29.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2019 06:29:20 -0800 (PST)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id B0CBA40B1D; Wed,  6 Nov 2019 11:29:18 -0300 (-03)
Date: Wed, 6 Nov 2019 11:29:18 -0300
To: Jiri Olsa <jolsa@redhat.com>
Cc: Ian Rogers <irogers@google.com>, Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>, Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>, Andi Kleen <ak@linux.intel.com>,
	Jin Yao <yao.jin@linux.intel.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Kan Liang <kan.liang@linux.intel.com>,
	John Garry <john.garry@huawei.com>, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH v5 01/10] perf tools: add parse events handle error
Message-ID: <20191106142918.GB6259@kernel.org>
References: <20191025180827.191916-1-irogers@google.com>
 <20191030223448.12930-1-irogers@google.com>
 <20191030223448.12930-2-irogers@google.com>
 <20191106140650.GE30214@krava>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191106140650.GE30214@krava>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: arnaldo.melo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=gXrtET1T;       spf=pass
 (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::744
 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Em Wed, Nov 06, 2019 at 03:06:50PM +0100, Jiri Olsa escreveu:
> On Wed, Oct 30, 2019 at 03:34:39PM -0700, Ian Rogers wrote:
> > Parse event error handling may overwrite one error string with another
> > creating memory leaks. Introduce a helper routine that warns about
> > multiple error messages as well as avoiding the memory leak.
> > 
> > A reproduction of this problem can be seen with:
> >   perf stat -e c/c/
> > After this change this produces:
> > WARNING: multiple event parsing errors
> > event syntax error: 'c/c/'
> >                        \___ unknown term
> > 
> > valid terms: event,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,filter_nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filter_state,filter_nm,config,config1,config2,name,period,percore
> > Run 'perf list' for a list of valid events
> > 
> >  Usage: perf stat [<options>] [<command>]
> > 
> >     -e, --event <event>   event selector. use 'perf list' to list available events
> > 
> > Signed-off-by: Ian Rogers <irogers@google.com>
> 
> Acked-by: Jiri Olsa <jolsa@kernel.org>

Thanks, applied.

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191106142918.GB6259%40kernel.org.
