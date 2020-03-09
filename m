Return-Path: <clang-built-linux+bncBDEPBSN75UNRBIUKTHZQKGQESXF3V3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 097BE17E13A
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Mar 2020 14:31:17 +0100 (CET)
Received: by mail-qk1-x73d.google.com with SMTP id v189sf7222249qkb.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Mar 2020 06:31:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583760675; cv=pass;
        d=google.com; s=arc-20160816;
        b=snxU4IJ2e0/80t1DXu4mZtUcvVS13JYkgf2XXVBIr6Fx9q1FdnycYFKj8ebT8xSCsK
         dnS5s/aGqFX+S8wPkgjHl/TEl8vVee/wDNENxs110+4pZfv+OctYPLewVwg0Gt+h5klK
         YPLEi/NhkQKiwJyz9OgBgbpCEMK9/+0trS3LdC8P5e/3TDmWam9tXmjf9hMYTn5aytg/
         wJ7E9IbihZqfx4MXfl2FKzSxB3Om+ZDKBBPLn5faO61ZV+HH6rglr5DAk8Hqa22qdBSr
         e2FMDYS5gYR6hh02H2+60mTqk7c1aiGXisKAFYwnYWKc/59/eu7JOO8ly59NqKQkmKct
         XHqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature:dkim-signature;
        bh=YjlRyBn6O6Tj91EUiXAeojQxcGJ0Iq6ePA7PdLxYMxI=;
        b=SaCauzVZ3Us6GSUR7mIKav6h4i5ocU/9145Vpwubp4BsMdUcH8Fbsea2YWS+2TCl07
         oBlbmXtYGsSRNoAJu9bTtR9rg8bI1qZOn4umxnIzkyAoBdkor1c2AFaxXcijJvlILx+6
         isvE8003h9qarCvwQh7OHz2t43eIPUrypSd4JaQC5McKYJaLuAHnYWjemON1BPAmOMxz
         eur5CVgAFwiIf+9eibgk/9p5nwXM1bu24f/UhM04c/nWEiH3kiQDmaroMIuVk4qtkcNP
         r3qBNYbNTLyFONXEp4diKlTYfye3gbT4c5rvxZdnvPOEDOwzjbVXwjb0mm1BP2Kkyp46
         iFHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rPBlxr6D;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YjlRyBn6O6Tj91EUiXAeojQxcGJ0Iq6ePA7PdLxYMxI=;
        b=NVPnNZUCLpDi68Rz/Nhip06uh/vklD1U+lfkOLDlGYnllUlzdIq6qodawfbs5clsGz
         swZXD/9AdUQj0NAZHt12WSxQoCQN339ISXXM5/XBAdvbO58ffA10mgHZIvuL4gFCmqfj
         krq0LCkSH6hZYQBz5uWreX+XwR7DA0cAmn7J3dtXuuba/1AWLxewmn7A0Dzq6jL5uBmJ
         ce9OvnngLcLHj2TQLEPbeYhYObR7DZfvVtjkFjErfHHJCBGvXEnyNHU1L13/0sTKvc7T
         A7q+ZljwyR5O3xQZVlTm5qS4C7isQVuHWJniMcmFDF528sUEa9df927wPN0+Qp1XyJIa
         zTWA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YjlRyBn6O6Tj91EUiXAeojQxcGJ0Iq6ePA7PdLxYMxI=;
        b=IL8CWN+5QdR+GUVpXv5wbKg+w8wClVrT47c2zlRWfoF648GGRPhYb7/bYAGvxEuxIh
         JFjZnaXNbr3kG+c6t/RnwzbYppeplNiGJC9SyPiHybhJ5pDDkjm1dE9GVkXh7ScxxiHv
         hnb+yjt+XmWTnZW/88VaYby5iUmBA5qA6Y3vhMb2PGqJ33uq+pqLAV+Huc70Mu5p7XTr
         oh6ex6C+pSnHW0etrfAu7p5DJ/dcgom2bSrMBDkYX11GLiVun7FAcyoFmI1vojAVz3XB
         6kRhedYitBH8u3QOYeUzYqjQrlATijVFIT9gjJ4E482vnlSGuUjoupMqf1QDh5OJgv1p
         rzPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YjlRyBn6O6Tj91EUiXAeojQxcGJ0Iq6ePA7PdLxYMxI=;
        b=bemLA2eovQBy50g3f7H1WR+l9sEuod7fSAZW6LBdMBsY0Nv5Qu2/Rg7D5X5dBblt8T
         zRb/Z/uIaBsb6qExLXDALt6ubN7YOKHOroNzaQrFVrW8wF9U6sFDYne+n3Pm510zP2SP
         57liZe2VMrhpw3HdgYoDKl2+SYAdcXH2ZF3DxJdp/s3YUzSPRVAaw0nPw0yBfSncqwjE
         lRi9trOCCHM4wR/wJwvUaL/puObs0yk8MKbyZybGlZz9oF/OROfCz9rsbtfnvIg+QkTr
         8RMzhxVkvkiNiIeSkMLbVW3ZVablx78pnKlf8cirpX8raL+qnWqJK3U90pRKSSF6vmFW
         Obhw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1wFAZM+IzAHvwNvwVDh3GIFRdpI/+HvthMPdVx7uoc38hlME5K
	U6xZ6tZx7PBOAjbUszJDVOk=
X-Google-Smtp-Source: ADFU+vsLcRnr093eKQlRTlxn0TB7dXpVakLQ84CXSymQjWkS7Dw19pBrDKhJcxjqjYRP3UymyOKeKQ==
X-Received: by 2002:ae9:c003:: with SMTP id u3mr15100914qkk.337.1583760674912;
        Mon, 09 Mar 2020 06:31:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2764:: with SMTP id n91ls3621101qtd.0.gmail; Mon, 09 Mar
 2020 06:31:14 -0700 (PDT)
X-Received: by 2002:ac8:460b:: with SMTP id p11mr14415555qtn.233.1583760674278;
        Mon, 09 Mar 2020 06:31:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583760674; cv=none;
        d=google.com; s=arc-20160816;
        b=01I5goKFjcAXQA+Ov9InLASwWCYtkH/V0eqBWzvjP5ApzimaevBM/UC2Y2iOkODfJr
         SbX7kuja+L6mIQGlAY8oKa57fvqFRlT9/KW2Aq6AOndSaVGfc3GBkOBSqyLOakG0dpQm
         ZfHh+8BTaxdkjr7lLMyYkxtIQzcIclacxvqFqwXWoAD34JiljYyKoPTRcjdYqw0/nok8
         Ih3nQp8UBzUfoIf3192v4DL9HuO15IAyGXPZV1O1J0PMWFImKgjTVHKYdNJUlQZ+igXW
         PXrdSN/bJt5FEHELmkPnaZNNe+OuzOlTfgG9TjZmFah5gwBFnna19q2ZgFB90VSzL+r2
         GXUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:dkim-signature;
        bh=P6XoxJQMVL3p8wdS2Ew5v812zn19DVoEQr35exngzuA=;
        b=C7t5AZpxQKVlJ2oD9eQPne4shL4gx+DiQwAAXzy9prEZMFqGh72kA5r5d2CD+yyxJz
         A9Dc2XtE1TzJnrzV83LPL0959bzlfQl1a9iWdLQ+JWCOvzf0sof/bHDC7FjOva6Q24mS
         Y57f00alyEwjN2n5wbsBL5NYFLKDhbyTuvsjffUHGBt0/j3w7C6b3ZDA+szADeS2Zx3b
         Q8xZTZuqV2fl8KGAWD04Gv5AN0Pf5QNruoSQjcdhimmb7kapUTOv5NKA0WzSsOTz7UEJ
         ziPHLsX2yd4OYtR1yxXUZQEhr2NDp/emnacmYaMOREoTwq/+bUflKkwsUPLDh0MzcMVG
         LnGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rPBlxr6D;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id c194si192691qkb.0.2020.03.09.06.31.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 06:31:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id f3so9185142qkh.1
        for <clang-built-linux@googlegroups.com>; Mon, 09 Mar 2020 06:31:14 -0700 (PDT)
X-Received: by 2002:a37:8e45:: with SMTP id q66mr15221915qkd.129.1583760673926;
        Mon, 09 Mar 2020 06:31:13 -0700 (PDT)
Received: from quaco.ghostprotocols.net ([179.97.37.151])
        by smtp.gmail.com with ESMTPSA id p16sm970542qkj.5.2020.03.09.06.31.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2020 06:31:13 -0700 (PDT)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id 598D940009; Mon,  9 Mar 2020 10:31:11 -0300 (-03)
Date: Mon, 9 Mar 2020 10:31:11 -0300
To: Jiri Olsa <jolsa@redhat.com>
Cc: Ian Rogers <irogers@google.com>, Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>, Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Namhyung Kim <namhyung@kernel.org>, Andi Kleen <ak@linux.intel.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Leo Yan <leo.yan@linaro.org>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH 1/1] perf/tool: fix read in event parsing
Message-ID: <20200309133111.GB477@kernel.org>
References: <20200307073121.203816-1-irogers@google.com>
 <20200307104501.GA311316@krava>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200307104501.GA311316@krava>
X-Url: http://acmel.wordpress.com
X-Original-Sender: arnaldo.melo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=rPBlxr6D;       spf=pass
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

Em Sat, Mar 07, 2020 at 11:45:01AM +0100, Jiri Olsa escreveu:
> On Fri, Mar 06, 2020 at 11:31:21PM -0800, Ian Rogers wrote:
> > ADD_CONFIG_TERM accesses term->weak, however, in get_config_chgs this
> > value is accessed outside of the list_for_each_entry and references
> > invalid memory. Add an argument for ADD_CONFIG_TERM for weak and set it
> > to false in the get_config_chgs case.
> > This bug was cause by clang's address sanitizer and libfuzzer. It can be
> > reproduced with a command line of:
> >   perf stat -a -e i/bs,tsc,L2/o
> > 
> > Signed-off-by: Ian Rogers <irogers@google.com>
> 
> nice catch
> 
> Acked-by: Jiri Olsa <jolsa@kernel.org>

Thanks, applied to perf/urgent.

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200309133111.GB477%40kernel.org.
