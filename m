Return-Path: <clang-built-linux+bncBAABBTGL6H2QKGQEYJCDYBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DFF71D20F5
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 May 2020 23:25:34 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id 9sf24628325pjz.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 May 2020 14:25:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589405132; cv=pass;
        d=google.com; s=arc-20160816;
        b=RS7NhSYpWSzxjHHrP9+0oQtr/RuLmQkNmYu3qz2R4BVOKUwyhLMjrd2562B6t6CDiY
         VIt/3MuFgiUrNJ5WklJKDh57mtypevfqv+AUYcqvlKgzdmMAoZE5msCkrpMnMrogh4P0
         WwdOoYai7Q40eq/7aNSkJ48K70KM8ELaCyb9Y8S2nKHPNKXJUV3oMzPTt9vX1AojS5Z9
         pyBJirLcArXe3oqh5zA5ws2gzYCccG5KU9I2EJQ/t2qsZPHCPrm1LLziv1gP6WxsG+Q/
         qji9o1Hgd6bfkJFmieAwgr6HsahjYGyJxxP89OOzZ4Wi//efBPZUQe9B91byV9AxpN4/
         lD0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=zSL3Dz3zY4l5PuGVFbY4e+jYVxjSrvMVn3BFSKAG3iY=;
        b=OwDiJA8Z9gB/SRJYGflfwFj170JA+fCzJJM7c5TaIr9tUsM2sG1KIHTqK0a4IRNgWf
         OGxlQp4ma4GwsxZ1hvc9WdQUtBOcy++eKw5RbL2ag1QQzZ4+LAigVF0ZCIVLhWVfEzp7
         G/xTPeqHM9F8n6uqBgXrFOL+PV511aGokyGFU3/Wz+ulbECFHWi4jARLzKa6Q+Ngp8pR
         qDWg0BuahOnnFyRpp3Krv8/kKQ+zvSgUqSxGbdiBId2A1toLO5S/BNo9mEI0bLSnFbYz
         AFfGj7XH/kyzbb3XbGBZVA5lb8VH8BIaBynn+6xFRdBKmAlMivILY+sSWvYXhSTkuzVD
         ycfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Yv/nqBoz";
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zSL3Dz3zY4l5PuGVFbY4e+jYVxjSrvMVn3BFSKAG3iY=;
        b=FL22PoBUsQ6RZpmX65MpVCHiXqsG7PlHl0L15E4L/RrsResJx3VTTAlXQZrAXs28ce
         6PKaVsACJ4SpAH7IS24O+g0H6owLMsJ2zegJaXvsfbw39JpWrK3vfsEfPWyCRauqdfFJ
         V0tkvGFNH+kVORsf3hu5Vs9t/pqeGXTOIHSZlOhJcsu4R7PmnAGp0VwDrai/0ukzP9p2
         XiVoL05znpdpZgMnYC7yOBmBvXWcXhK+g1ZU5LTJm0Hv26AaH9UoLOovMoEpfO+roOsg
         nz2jczqCYwmC/kQ//PVy4a8n/W7rxlPimsL6KZbkQPn7G2f2qjJsH2p2vuS4NUjt/5+X
         V9bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zSL3Dz3zY4l5PuGVFbY4e+jYVxjSrvMVn3BFSKAG3iY=;
        b=JzsS46m7e637hsnIkcZedjMGS58k5gghriFDTnqEF/VCHy1rTMdCq4phaS9TEGbMEX
         bOIRu3SOkfJi9uwvVRKeKeIx0aJ/ki8zrCorVF2MGOOr6IjzdkEseb4fVnC19qUDaaS5
         1cI2pjM5KiPDUMuIqI8QZxchpy9GTMZ07HReU7UuGAKfJ7sdTHqn3FG/13/BCPtM3Krw
         v4IotGua+AkoI2L2YiFN1FNKIH+nX+nzIB6I15xMS8LUlO7KgRKm6VdLPsJ5fsivrZSE
         zZ+cl1nsgEmNqntfzdQwvoiCRAM0G0PHCNwnsrvjZUqIxwyOCK1kXp9m1wxjlZh9l573
         Iy3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubJlJJErbxANgduRA2UxfWzs2ZNiJ2X2ea9g6CqNg8O59BOqfZh
	UBtNcLRmM9wkUPlzh6R0fIU=
X-Google-Smtp-Source: APiQypI0f3nfD9wFSfgoOx7vXvKsUroSKkDiMVw1p/o0J6y3DxPg3Y4c77FonAHyEQ8QVpbN3jiG/A==
X-Received: by 2002:a17:90a:7349:: with SMTP id j9mr37660688pjs.196.1589405132647;
        Wed, 13 May 2020 14:25:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:24c:: with SMTP id 70ls219689plc.2.gmail; Wed, 13
 May 2020 14:25:32 -0700 (PDT)
X-Received: by 2002:a17:902:9049:: with SMTP id w9mr1091417plz.27.1589405132286;
        Wed, 13 May 2020 14:25:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589405132; cv=none;
        d=google.com; s=arc-20160816;
        b=H7oWJBTGnNVkAzEtEYxRx3YAVLN8qFsw9hBLvK2+HYcMBSYBePIXjLNp3+j2eZLnJx
         SWzlGTIK40E3HsWno2luis8LnhkqNFbSCF4VGn3qXVy0r4FyE8pq3RLC5G+8no0fyUnr
         vVRXplvzT1FH8jV/hDTgKHhoB8qOUfAx2NCUjbbodkEe220w1jEoWLGktpDdhXs4BbST
         8RsQC1IdwEAJyVs0Y/6+aV7Ev5IGYrpzh+lXKgakWyzgXQ529uSt5lsZHgfrWyp5Yr+J
         x9R5Jua/xLSDpN8+2tukHwcWL1dL5GmTpX536hgtEGp4owTM1qy0GS0NYX27KWyP/3I+
         4f5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=f8zqj/EuoV2BcIWDNv4mcbauvqYeDf/kCy3/uTVxqqk=;
        b=lrECtFPIHynhNIgYDlzIUw8bFgW+V/bjeHTwXtSYrVEAJw/ZI/ZeJxlvwV1PBhJBov
         +SxZPSNTO/vQFdej6QWdmsdnn6ch1cxVp+oLoOZsI/xvwEOKGA0MS3cruOnu5C2aaWTY
         irFiTGDIL5n919TaPiXZicajLirG5KemETykdBvoVKE4zKJnEatJVCmEan/SCy0HJfVk
         +hFZxJMhPRHUc2N/eoXcdZUXtvK/om6BtWtTqXlW4b7W1SJ6UlgBTpUpKcXYLNfj8Zlb
         tQdIEAMx5jugCOvkKpvYcatpKP+azeaKMxx9d32B2k+2j3cQmvOFJj/rIC+yJZWlM9pJ
         Z4fQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Yv/nqBoz";
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q34si527385pjh.2.2020.05.13.14.25.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 May 2020 14:25:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from embeddedor (unknown [189.207.59.248])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 02A9120693;
	Wed, 13 May 2020 21:25:30 +0000 (UTC)
Date: Wed, 13 May 2020 16:30:07 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Ian Rogers <irogers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Arnaldo Melo <arnaldo.melo@gmail.com>,
	Ingo Molnar <mingo@redhat.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [PATCH] perf tools: Replace zero-length array with flexible-array
Message-ID: <20200513213007.GP4897@embeddedor>
References: <20200511195643.GA9850@embeddedor>
 <0C076F02-CEB7-4DBC-8337-CCEBC0870E44@gmail.com>
 <20200512000404.GA4897@embeddedor>
 <20200512080607.GD2978@hirez.programming.kicks-ass.net>
 <20200512180352.GB4897@embeddedor>
 <CAP-5=fWOhnKe1-c39Pg9M14Yet7U1jRvPpKxa7N2A6JSXLRe=Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAP-5=fWOhnKe1-c39Pg9M14Yet7U1jRvPpKxa7N2A6JSXLRe=Q@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: gustavoars@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="Yv/nqBoz";       spf=pass
 (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gustavoars@kernel.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, May 13, 2020 at 02:03:56PM -0700, Ian Rogers wrote:
> On Tue, May 12, 2020 at 10:59 AM Gustavo A. R. Silva
> <gustavoars@kernel.org> wrote:
> >
> > On Tue, May 12, 2020 at 10:06:07AM +0200, Peter Zijlstra wrote:
> > > On Mon, May 11, 2020 at 07:04:04PM -0500, Gustavo A. R. Silva wrote:
> > > > On Mon, May 11, 2020 at 05:20:08PM -0300, Arnaldo Melo wrote:
> > > > >
> > > > > Thanks, applied
> > > > >
> > > >
> > > > Thanks, Arnaldo.
> > > >
> > > > I wonder if could also take the other two:
> > > >
> > > > https://lore.kernel.org/lkml/20200511200911.GA13149@embeddedor/
> > > > https://lore.kernel.org/lkml/20200511201227.GA14041@embeddedor/
> > >
> > > I think I have those, but let me make sure.
> >
> > Great. :)
> 
> 
> Thanks for the cleanup! It has yielded a clang compiler warning/error
> for me in kernel/git/acme/linux.git branch perf/core:
> 
> util/intel-pt.c:1802:24: error: field 'br_stack' with variable sized
> type 'struct branch_stack' not
> at the end of a struct or class is a GNU extension
> [-Werror,-Wgnu-variable-sized-type-not-at-end]
>                        struct branch_stack br_stack;
> 
> I think this can be resolved by reordering the members of the struct,
> and may have been a latent bug exposed by this change. It's
> unfortunate it has broken this build.
> 

Yep. The following should resolve the issue:

diff --git a/tools/perf/util/intel-pt.c b/tools/perf/util/intel-pt.c
index f17b1e769ae4..b34179e3926f 100644
--- a/tools/perf/util/intel-pt.c
+++ b/tools/perf/util/intel-pt.c
@@ -1799,8 +1799,8 @@ static int intel_pt_synth_pebs_sample(struct intel_pt_queue *ptq)

        if (sample_type & PERF_SAMPLE_BRANCH_STACK) {
                struct {
-                       struct branch_stack br_stack;
                        struct branch_entry entries[LBRS_MAX];
+                       struct branch_stack br_stack;
                } br;

                if (items->mask[INTEL_PT_LBR_0_POS] ||

I'll send a proper patch.

Thanks for the report!
--
Gustavo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200513213007.GP4897%40embeddedor.
