Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBBMF3XWQKGQEYPL5TNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E508E7946
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 20:33:26 +0100 (CET)
Received: by mail-il1-x140.google.com with SMTP id y7sf10672118ilb.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 12:33:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572291205; cv=pass;
        d=google.com; s=arc-20160816;
        b=NUh8SbD3PnsHsfzF84cACtLmnFO8BgKdo0aHzcbBLeYtMRoNXGfjBPutYnycShx4nr
         MnoXX7mkKwilH3F5zBV9Eerv91ysR+9UwVABVc6BMQmqFTjGmLTa7r7KygKaPodC6Q7R
         il6OAIJjDudDhfqjm/G+lFYXZ3qjEycysbbEJd3MJL2Bec11DE1xWnqDYBbH+zSybNT+
         iDMlJFzRccJqZdco2VyFE2uGZSbrjtrlbGSyH70Lm+9KIMF+KRFiniBPwSi3eTNuvz26
         d0GdhOk/q4OsW5lUpKc74d/BYvSPK6FrqUGzb3HOno44SctMFYv31O8EBEIpy8UQHXWW
         1cTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:sender:dkim-signature;
        bh=ZAOtQWAdYEcOkheNg+eIMkl7TvDEpXQ78jr0Jzg9utk=;
        b=xiFhlJfO8ZXj46/jXE0m+h4RoNTyzHY9kicGMjsySl+4Kyx439vV0gM+TCi0TX9O0y
         rCNnEv9Rvwv880UwIl6jzhIMrpmOzXNsNyRLbg9P12uOtLyfaoQegyzjQ1i8jrRQkfgO
         QLuzhb+p8vkiXVl90pAAfQ+RRQuCNj+QHr5Dq94mnKodSOkOh0z1g6jxlt9XjU328AdE
         skL7S82wcexKSV18osPLivuIeeJ4e3XeoIuN3UQIlgViHyD3azr9howe8hOHLgOPdq50
         fuVkxCidYowsy1RTlZjpc3mtG89aQ6RVAHNqJfGKLiL/oNq2lFWPFF8YhUOyWbzSXQ2N
         160g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=LCRgxfvd;
       spf=pass (google.com: domain of jolsa@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:user-agent:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZAOtQWAdYEcOkheNg+eIMkl7TvDEpXQ78jr0Jzg9utk=;
        b=h/Gun9fRDwbBKP2CYOlNJiZtetKs9U/Jh6ezm6uklarSuzN2ekbVwHLtSDCir1jZ2m
         ImJ0lRqP54HFlufL49MK+qjdviItWpmuuE9qHutpveduVK1DAlRP+Xhvxf6o4YA8pe1W
         GN/70C64vA9K8b057nHvz/Jzwl2tyxCRBmPc+19eb7lFVBWU0IoVQt4RIA2J4zC7zXBS
         2KTleZmrQsRqz3YWg9hlQnKp99PWj1WkFsrk3hasP0rYaKhCN1cDGcjujnE2732nX7pQ
         zyNliDyXQgzUUEAqkr7dpwKwxhAz0+zXCEtIQ8zVosUiZAS4DkPFF2Z02MTxbfXy/IuS
         PBlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:user-agent:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZAOtQWAdYEcOkheNg+eIMkl7TvDEpXQ78jr0Jzg9utk=;
        b=NYKNw3jxVHrgi+VGosryE/hDM0qflU/i8q+r5GWGkeroZNsVwKtAhxiVnB9beehZED
         bsTUjUmTcYR5q2XQjiWdET0bQOVRXCLtL8eGTGZwSn0Kr5feyMeIvgW+ghWqgdeyJCjM
         9UKuYSaDgKYafN1CdttlOMjokGz0+y8slObFsMdrEBNZ9SFxrA1P7MyuYuZE9/tbGZmg
         33I1DgPP7V4mfXa3IgPH8eZPhpjnZ+JSsKjpDdOAMVdjZH7Vhvic8SjLqhzp5tKxSJjC
         WcT+lJz6BGH7c2fY9v4DgPfCUEEqCnBzAuPfizvqwxxIyCzS23S1e/8hnnGnorAdCF+z
         /ExA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUOHp0AiedXzKSfvewHficODixmBEGoFqnMFqi8IVNIMsPMGVj/
	Eh2A1X3sOGXi2xCNZ0tUcrE=
X-Google-Smtp-Source: APXvYqy1NesRsl1vmKxMV17WhocLEEi4qeF2M+vUEw6/Y0rcD9N/bb/DCx5eXPf/vp4bgEPbUCqKvg==
X-Received: by 2002:a92:4555:: with SMTP id s82mr22644382ila.228.1572291205280;
        Mon, 28 Oct 2019 12:33:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:4781:: with SMTP id e1ls3179133ilk.10.gmail; Mon, 28 Oct
 2019 12:33:24 -0700 (PDT)
X-Received: by 2002:a92:6a04:: with SMTP id f4mr7031422ilc.252.1572291204948;
        Mon, 28 Oct 2019 12:33:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572291204; cv=none;
        d=google.com; s=arc-20160816;
        b=D/JFpKINgjGHfSKwtKfqyAJoSvAX+cdWoDmgz5MByZeZCGmMOEzrvwcp+Uji66y0vH
         Qx7kEQIVIIIN7HW/+A2xxRO0QPx1On44e9/PY14ppVSVuoU3/IF2HV4P4z0Nzs8N6o8+
         CniW9nuimw+BaUrmGaXAkDdusmnLsv2Tb6Yp1TbalDqT8o75CqZupIU84qE8+xJkvYU/
         9FePgZN4QmylyB8dQdtGpXOM16mXv0VPedPBjkvtcruwj5fZhzq6zKc6HYxtnzFrs7+R
         x3gTLbiDDOYErnjboJODWwBCZgdufG1qlTXCker7RN1/B8I8BxmtSBAFZXz+YqkSuteY
         yf+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:dkim-signature;
        bh=2YZ7F3vF7jMcA3PDwa/7MxLquCpsOuFuGZy7i0YeAWQ=;
        b=IC6x3xbrZ3vqOljiKl4FingkWTmq99/G3LCThPH46i426JlyjtmVWdhQOnka+Ndpso
         HD67QXvYL1CfqEaPwu4sTr2OJJDtAaz8w+c6arb3/saYZr6cEysiA4yrTDwpgNAVl7Kt
         JTfyQEaHg+af8GiSWc8IV8wpgt1DjAzM0hCv65iYPSEyhAWemp+0Q+GMf2bDtmtW2pMy
         KJqh+8W+jN4znphOXuqq7dCYejfs2e109zcNRgZ4vZaRbsitkiWvY3HYPemTwqBChivx
         r5WYWIqI6ZlSwQSF5whOwcIxelZtHHjrG0YtOaYOE6pAqNKMvocB3DOeVrVsujvKjgUe
         ZecA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=LCRgxfvd;
       spf=pass (google.com: domain of jolsa@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id a17si46161iok.0.2019.10.28.12.33.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Oct 2019 12:33:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-170-X62VVYcVMR-ZX8x6VVJrsg-1; Mon, 28 Oct 2019 15:33:17 -0400
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D9B7C85B6EE;
	Mon, 28 Oct 2019 19:33:14 +0000 (UTC)
Received: from krava (ovpn-204-45.brq.redhat.com [10.40.204.45])
	by smtp.corp.redhat.com (Postfix) with SMTP id DD96A1001B32;
	Mon, 28 Oct 2019 19:33:09 +0000 (UTC)
Date: Mon, 28 Oct 2019 20:33:08 +0100
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
	John Garry <john.garry@huawei.com>,
	LKML <linux-kernel@vger.kernel.org>, netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH v3 6/9] perf tools: add destructors for parse event terms
Message-ID: <20191028193308.GC28772@krava>
References: <20191023005337.196160-1-irogers@google.com>
 <20191024190202.109403-1-irogers@google.com>
 <20191024190202.109403-7-irogers@google.com>
 <20191025082714.GH31679@krava>
 <CAP-5=fU6quu74JwZSd70UMTSS2wf_29hBgvdXfJZedOfrE7ohw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAP-5=fU6quu74JwZSd70UMTSS2wf_29hBgvdXfJZedOfrE7ohw@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: X62VVYcVMR-ZX8x6VVJrsg-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=LCRgxfvd;
       spf=pass (google.com: domain of jolsa@redhat.com designates
 205.139.110.61 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
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

On Fri, Oct 25, 2019 at 09:08:34AM -0700, Ian Rogers wrote:
> On Fri, Oct 25, 2019 at 1:27 AM Jiri Olsa <jolsa@redhat.com> wrote:
> >
> > On Thu, Oct 24, 2019 at 12:01:59PM -0700, Ian Rogers wrote:
> > > If parsing fails then destructors are ran to clean the up the stack.
> > > Rename the head union member to make the term and evlist use cases more
> > > distinct, this simplifies matching the correct destructor.
> >
> > nice did not know about this.. looks like it's been in bison for some time, right?
> 
> Looks like it wasn't in Bison 1 but in Bison 2, we're at Bison 3 and
> Bison 2 is > 14 years old:
> https://web.archive.org/web/20050924004158/http://www.gnu.org/software/bison/manual/html_mono/bison.html#Destructor-Decl

sounds safe ;-)

thanks,
jirka

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191028193308.GC28772%40krava.
