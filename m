Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBQHWRXZQKGQED4SBIFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id A412017CDAE
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Mar 2020 11:45:21 +0100 (CET)
Received: by mail-ot1-x33d.google.com with SMTP id x23sf3163535oto.18
        for <lists+clang-built-linux@lfdr.de>; Sat, 07 Mar 2020 02:45:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583577920; cv=pass;
        d=google.com; s=arc-20160816;
        b=s2qRv4tUXC5HY9qoQwXQ8PuY0DyiP5e4IGfwL3MWkSflIqkEPPAnM87Y7rSUjMSCC3
         f+f7/UHXRd31Gx297l2/CCj/pDZ5MpmC6sepRbl7Qlpwc7vtL8vFY4vgo2coOBmxQw8j
         09dgw8eBw1H/+IZXB+HnQH6E4A3HReOomvklxI7VHO7t6SDl9asycQmWEfbuXDNNQRte
         w9cqZM7YusnOn5JkagrF49L8bDXfp3m+WUa1LBVTfAeCc+I4KjAEyBW4DqmmOV/yhT2Z
         6GBFhnQ6c+TEsoIrgflQ5Nn9/a5g3K23TkJM3uLSnmcsJf/byjCB2E3kim3eEcnNVojb
         4QNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=tqWHF4icAk+97sDgJxP7FwVEn3yarlHNqB187XRjecM=;
        b=BKTdjxCJORj3B1CDwnKpy5EBc+0WeqXTnrM/k2Qf2nB5j7cqQ5Iu1isg0YNhyN8MxG
         oQcsUdj+tZk1zfFTGiRwBR+Epir6R+w7vy+iU0QuzCqRTJWB0iLItdFJKFDvo0QTvO8v
         rhEOb2CTE88oAU1LPXN7omHcuzW65stSjko1qPKuMmDHOQN6pKxQhdH7il707U2wGHNi
         aq3zVSxvzQHjicOS8syzQ+w4BGVnwCgM7LIPnQkWUfuLmsyIs442qi8e2EnjltC0pU59
         dFLBKJGp38ntQe4qNzbVZHR9T6QguBc5U7k1X3EwpRKQiO9yRogZm3rfu+5adN2lLCU+
         jO+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=f3j1okar;
       spf=pass (google.com: domain of jolsa@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tqWHF4icAk+97sDgJxP7FwVEn3yarlHNqB187XRjecM=;
        b=HEw+ix8VuLrQDzlVUTXR0OxZx3IvdinT1YelvBwvjkP9+bJmfw+tFs3ehbn2Rh/stO
         Ys+0o+hVHH92kAtQHSYmZIin6kR43sN5GBYKOAmxCFSrM4CEY4ld7lzLrDpiW5/hUiQ9
         SVPN0V7TyV8+OcEjvLobHwLroqUxtGYkg5SOOXoN6et/AjVrXVnhp0NWPHm0KeeDFtOF
         s2HT2BDCkzHKdGRp1dia7uCPyinCgmW9/cSgf23Z5aZxe3Bu7+w0hvmIgwX0GIPpwcQz
         Q8M2Q2yrJVKBEOCa+UtWT0r4kcMBRiEPSIAMolbYSOCe8ppMM3Svy11S0vkr8Y514Xnv
         hTmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tqWHF4icAk+97sDgJxP7FwVEn3yarlHNqB187XRjecM=;
        b=i+zf79qMrV9XVb8ervhw76i+/pFUPqT9fi0WDyqt5XsSiQjg6bWfc/E2IqYB+LMp5f
         0r+M33/FXe9dUs2dmLOiKnG2cc1hbnrx7v67KrDTN7AK+P1QNZ9sgr+kaCbcsAxiRM9c
         DEM6z0EY6liZppyTjv08Kcz8XBbOQtbUrtzCK3ARMpwVFSs6S58vZ5LGfvoWnSOybqaZ
         mAasNDROthbZTO/hAjz2j+5KzUu8v/muMpXfNlcXnCq2E6azaa+WMm65gxk3LX/e0KPh
         sfJPAfyftIx9pPO8AZqib20/VoHdc7eBr/ih9m2XXRbe+WWk+x3gacQpcIfWpcxjMup5
         xKgw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3IgxkHHhBL4dKwShE0REnw53GtKpDOGoCayz+hoDW0HxwGydEY
	V1LI48BgfRAGlT5UG6NSjR4=
X-Google-Smtp-Source: ADFU+vvE7xIg8j3CCikDP8SylKoLcAERuuGnlZM5UmGrBdrNcIua1WWQ/faupM73ddVNPqyAMzXJrQ==
X-Received: by 2002:aca:c256:: with SMTP id s83mr5612821oif.57.1583577920195;
        Sat, 07 Mar 2020 02:45:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:164e:: with SMTP id h14ls1549749otr.2.gmail; Sat,
 07 Mar 2020 02:45:19 -0800 (PST)
X-Received: by 2002:a05:6830:60b:: with SMTP id w11mr6145264oti.350.1583577919862;
        Sat, 07 Mar 2020 02:45:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583577919; cv=none;
        d=google.com; s=arc-20160816;
        b=AheMUIyGtSPegD95uGDrnb5mj2zq6VmWvBqiEDvp2eXGTMZkrKGeZerSEkfig8nclY
         0gqSERJ3TF/l1Me6wJj0JydFLnl5nec7FnETWSV9x9f9WsXz2BXnyNEch+lQNEmJwkrA
         Eb/DNoxtSTymERkU3oBD5InR6F7Al3ab28UyWCGapJ4t83IlBp70gQy1Ml6MmS/Wa5iW
         j1CjHGhfq+siX03wqx21MTmW3uv2y7oXU1OWEis3wJcJ5+dlVBw+Irq55ThK3yFW5eWn
         yyJWeZXRJCBWBgO2c5YsWIfNmOOGjPlsfr4yUqCgQOnFcoK2HlFal2tAsXKpYYmbGFea
         aD9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=iPDCZ/KbzdltRPn25i5SoU+xFMCcgx/ga1DrivtTXmo=;
        b=jkNEVAJFUW4T178v/CIM3HlR3QDWV6c3GZXIIap83h1/JMpyrSLvb7Q2yQuHH9EM9r
         gpDQV+S3nINF4vYt0nnNcy7o6QJdGjb2vB4hBw0j/2vnLYzKf5cXhkV7gE9j0xctpELA
         N4NysftEfk5UWVLM44De3bs0d56FJmXK/aWCKfPoopyUtSJkR7j4Rq0zm+a6cbdjCY8u
         U8TIMu2qjul14QC9Fxsj+HR/R8zRYYkhVWatwuict8tg4YsQkEjs2wPRxpzIT3OJFOcz
         lthP/IEuuVc1ItIsZESrk4gFmyFimin/blryrb8Si7j4wNb6MNdZiJNeynPs0zrs2Hja
         YWxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=f3j1okar;
       spf=pass (google.com: domain of jolsa@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id z5si190416ote.5.2020.03.07.02.45.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Mar 2020 02:45:19 -0800 (PST)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-49-4Ya9bD6BNjmfUZ5RElNv9g-1; Sat, 07 Mar 2020 05:45:15 -0500
X-MC-Unique: 4Ya9bD6BNjmfUZ5RElNv9g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 46C34107ACCA;
	Sat,  7 Mar 2020 10:45:13 +0000 (UTC)
Received: from krava (ovpn-205-205.brq.redhat.com [10.40.205.205])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CBD415C1BB;
	Sat,  7 Mar 2020 10:45:06 +0000 (UTC)
Date: Sat, 7 Mar 2020 11:45:01 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: Ian Rogers <irogers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Namhyung Kim <namhyung@kernel.org>, Andi Kleen <ak@linux.intel.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Leo Yan <leo.yan@linaro.org>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH 1/1] perf/tool: fix read in event parsing
Message-ID: <20200307104501.GA311316@krava>
References: <20200307073121.203816-1-irogers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200307073121.203816-1-irogers@google.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=f3j1okar;
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

On Fri, Mar 06, 2020 at 11:31:21PM -0800, Ian Rogers wrote:
> ADD_CONFIG_TERM accesses term->weak, however, in get_config_chgs this
> value is accessed outside of the list_for_each_entry and references
> invalid memory. Add an argument for ADD_CONFIG_TERM for weak and set it
> to false in the get_config_chgs case.
> This bug was cause by clang's address sanitizer and libfuzzer. It can be
> reproduced with a command line of:
>   perf stat -a -e i/bs,tsc,L2/o
> 
> Signed-off-by: Ian Rogers <irogers@google.com>

nice catch

Acked-by: Jiri Olsa <jolsa@kernel.org>

thanks,
jirka

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200307104501.GA311316%40krava.
