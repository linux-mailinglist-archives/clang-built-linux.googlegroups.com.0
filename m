Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBCVHRPXAKGQEX2OEGZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A3CCF17EA
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 15:07:07 +0100 (CET)
Received: by mail-oi1-x23c.google.com with SMTP id r67sf15097521oif.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Nov 2019 06:07:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573049226; cv=pass;
        d=google.com; s=arc-20160816;
        b=IJvO6CmeWo3q366ctFAMTDLPiee4tWatX8fcRZJc1ZuNcnWePdnE6dwA4bPYXZZB4m
         ijrw+INULPxjw8jCm5JvixXdNIz+bfCGOMCTN3yZfEIyIPRRl/pqns+4BR7slr//fNJF
         cJETS6YnO4pWFHzEv8cE352/Lqp6xtC4GRceOiqMbUWtR3zc+hWaJ0NvTOS58qDbBX7Q
         98h+arLAso8Ug3zbq3iRp3O6ButGzF2G+Xu0rBrPB4yS7FezNvQJ/RhSwQfailqJJVKa
         KvrimmZVeV6Ulka8+bEAx1pEct0TkVSBE7zy/JpGRn2YzohotvaFeQooyo8NS8y9PLUV
         VXgQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:sender:dkim-signature;
        bh=DYDUnrWMZpynJ5bY6WUQzbZQhx+Dz/WVbYvZTiBK8DA=;
        b=pdrtLALlM/BNyZ9aLL+ZFJvFuVcFlFP0osFTV8FKxVK5RxfBT3uXg3IirmPM9I/1WF
         X32ZauqQPJJggI6cldMs+mbyqbP34hSzWtLXTwszzGGeV5lCsO+qqQwwHeKsbrHTtrKC
         NX7/KFN41QnhS6lf9MhOpTw0s0eGSwNk14UPcNUjgN7k6f9/wsGBhix2U7G1hNH+G786
         f/sHqdCFYayGQWc9n1qM4/ZnYRS1jtVGcKdavdRAGF4f4BsI8PxYFYSq2KxXlXmtfNpV
         w9FmuUR+xcTEFNMB2H0tOhlPtsE4tIHZ7cRBoZyu4z201d/Ut/bogtgMpFaTfbgAB9OY
         eMMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=gLaTYVUn;
       spf=pass (google.com: domain of jolsa@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:user-agent:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DYDUnrWMZpynJ5bY6WUQzbZQhx+Dz/WVbYvZTiBK8DA=;
        b=VEmYipBJLGlW4Ioexva94xk1qV+OlP3QMKHsp8iyCWZHarw50Z1PMZS7f/tZ8TU+yb
         xvGS2Rh9wKQbNAXGQY0k266th2sArUSFDUZPr9Yt72ghTXeOF7wA8bAjZ/7F2IS6SfRc
         MZpiil7y11E1QZWbZstI8Rca/L1RMax9nc4S16OIDVXGBzPf1OmUurEJsnx0mrV53tfU
         UOG0AqfV/w+/MPPGsffA34ZGiMkxYYSaS8PNh0tq6esy5/k4TZgMcBYrfVnFJnWNg/Iv
         kmNrqQLq6NY47wGKpoMhJE1SaBAi8Y27ghdlfqVxxVvxWknqVcXBYvVM7WbdNXnhmjIi
         E2Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:user-agent:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DYDUnrWMZpynJ5bY6WUQzbZQhx+Dz/WVbYvZTiBK8DA=;
        b=CUkQ/HTaxkQgJ5iYy1q+g0AcnhEhtQN87ZS3GedFXjptLwu87b2XjY3iVYE/6NJGxk
         WdN24vQbW7vI1SvyS+xiyyBT7VzTsaiARecO+UBhmPDi7T4Fuo2sskSOWGg78z3w2HhY
         uheduecwLryBItqAF35yiA8daJkNbx0nWaHz5+0oF+IqwKkR5w5cvB2gGuK9/AD55JmJ
         RzVs/VuzzKbt1NI3doo7xyLEtUVZzAvFOcSRVBUw2cUEmyu4AEj4Xmh6UeF71h8/ukyd
         uLDOF/Z/SGJYkMgtKEfOKN/fsexZMkHNrLJ7n0LayKu9M7WSrDL5WI+BnXCi8DEMv7FI
         Pl6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUxelgZR3G+c03MVFlb8rMCZsFAYY+21ZRCpjlNJzZ2DHjU/whg
	M1xkB0GR5y8clPs7qHdEOaE=
X-Google-Smtp-Source: APXvYqwifLAYdzo4ApOo5kMBTmHsIYzkJA7+QO704/n7AiaWjkw29///h3IGi63pDuSs3eGK/p34eQ==
X-Received: by 2002:a05:6808:18b:: with SMTP id w11mr2309347oic.25.1573049226356;
        Wed, 06 Nov 2019 06:07:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1f4a:: with SMTP id u10ls666243oth.9.gmail; Wed, 06
 Nov 2019 06:07:06 -0800 (PST)
X-Received: by 2002:a05:6830:1507:: with SMTP id k7mr2028968otp.316.1573049226004;
        Wed, 06 Nov 2019 06:07:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573049225; cv=none;
        d=google.com; s=arc-20160816;
        b=yoDGo5L9F1RyJfLssw4hbguwgHJnBXLI/lJBt7Y73PrUtEuTAMQNZU50FBxixVu3oM
         mZZLJJfqLn3EkGPt9T5Yy5yT2juFOvrDKA7NsT1VWBSFdUruETYuszejcJ0RfEg9mkoZ
         CdxMf/QNxp2EhHGQtBiTHzOIjvjp3ImRTLBoL4gZiJ50pRCFuWqM9S4knE7VCEA5sxHV
         WKDeuDJUMy298KGiinn3Nhu0qo7sbwCngnakq5ha9gLua1jfkJ0Vge9ZI8w7Oe2LB7hX
         29oGvGxuYOu8V0kr2jegl+3eiUKkjyOdWuPWA51DpNNtkBvkioByY9cLHYUZoo1KqpQ9
         nXNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:dkim-signature;
        bh=kQUJhTS5ZQPa+H7gyw31F1k30QCMAlnrwuTj8cTiw28=;
        b=MqnjGfQtLTlRcrDdoVn5oOwLgfxE0tgUSR7tOCzRU/tabS10fwALhZvIEhbWeJfF4x
         YRqJp1zqo+1qvx87JO+xShJOuvKQY2daW8GRMhw4vHa0buiZBDlABHiLa9LKqz78T9P8
         On2cG9o4ph72UpISyXrTZeTxfji6p0jLaCnZZBrjmZQd0ye9RRmc60t0HRHZMSl3R0g2
         JA7w9AbZJwZ95IWgsPpUGz0rjz0XaUCUDtB53YPhCmZbiXwkRlnEYLGXyEtiHBiDTC1r
         kG4eT9VBZTMs2rZGired9H/QgyybBxYhPOiEEemC+HNlJ3n5+te58zpoJq00mfdpDL8/
         JPSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=gLaTYVUn;
       spf=pass (google.com: domain of jolsa@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id m23si1254346oic.1.2019.11.06.06.07.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Nov 2019 06:07:05 -0800 (PST)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-37-HIuIU22MPBuvr-Q7-vH7Vw-1; Wed, 06 Nov 2019 09:06:59 -0500
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 257561005500;
	Wed,  6 Nov 2019 14:06:57 +0000 (UTC)
Received: from krava (unknown [10.43.17.48])
	by smtp.corp.redhat.com (Postfix) with SMTP id 513F25DA76;
	Wed,  6 Nov 2019 14:06:51 +0000 (UTC)
Date: Wed, 6 Nov 2019 15:06:50 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: Ian Rogers <irogers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
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
Message-ID: <20191106140650.GE30214@krava>
References: <20191025180827.191916-1-irogers@google.com>
 <20191030223448.12930-1-irogers@google.com>
 <20191030223448.12930-2-irogers@google.com>
MIME-Version: 1.0
In-Reply-To: <20191030223448.12930-2-irogers@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: HIuIU22MPBuvr-Q7-vH7Vw-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=gLaTYVUn;
       spf=pass (google.com: domain of jolsa@redhat.com designates
 207.211.31.81 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Wed, Oct 30, 2019 at 03:34:39PM -0700, Ian Rogers wrote:
> Parse event error handling may overwrite one error string with another
> creating memory leaks. Introduce a helper routine that warns about
> multiple error messages as well as avoiding the memory leak.
> 
> A reproduction of this problem can be seen with:
>   perf stat -e c/c/
> After this change this produces:
> WARNING: multiple event parsing errors
> event syntax error: 'c/c/'
>                        \___ unknown term
> 
> valid terms: event,filter_rem,filter_opc0,edge,filter_isoc,filter_tid,filter_loc,filter_nc,inv,umask,filter_opc1,tid_en,thresh,filter_all_op,filter_not_nm,filter_state,filter_nm,config,config1,config2,name,period,percore
> Run 'perf list' for a list of valid events
> 
>  Usage: perf stat [<options>] [<command>]
> 
>     -e, --event <event>   event selector. use 'perf list' to list available events
> 
> Signed-off-by: Ian Rogers <irogers@google.com>

Acked-by: Jiri Olsa <jolsa@kernel.org>

thanks,
jirka

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191106140650.GE30214%40krava.
