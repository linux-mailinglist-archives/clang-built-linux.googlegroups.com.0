Return-Path: <clang-built-linux+bncBDY3NC743AGBBNMSRD3QKGQEGDWFE6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9171F65C0
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 12:36:38 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id c17sf3579493ioi.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 03:36:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591871797; cv=pass;
        d=google.com; s=arc-20160816;
        b=bKSIqPlycDDWET/Scln6qEBX6PbDCxWTJ3rddgVWnJlJHH8u7nAmPdFd+96iW3a8A2
         a/DVPMJEyfeDH599TDrVCfU4BOOj9+3FJZmTOoxQPj3eJ3DGsR4ThO5WOTUS2wTfmx7+
         CU0ML0Akj1hwIMuq21zS+7Kqnjz853onC3/Z6Gv+cB0k3PHgKh/sWpE0Ixh8St5FyA6w
         NPOgU9R1qkF8lGlT5wwmWWwxEVATmc2wRuda1HS8nT/mPq82HRCw1GfpL/dIaparXIqw
         RswdzJn6mG6Navpf4Dg/4ze1nYEE9nyoRp+liWYU1yz2ZWlIJTADr2f1k0OgYDCbWZhC
         +cvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=DvWZ18YvzNY38sP8t29fI+kAbJcuTJfzW0UI+7nlKIY=;
        b=PDptxhT4Ceggc8IiAJDesyrClmhLRLaG4XcicYibsvBzmgXVAjX6qhum6HfcIsqEsO
         u+ZGKWwzcqQsM1mG+HMEnQACMcGw5NprBMLvRVZJ+MoSWm5+/UoKTghmQ1zWOlEPCBIo
         feGjufUGNykfkAb3A4x1VQCp86crKmQDUEYbe2/dlkkQktOFm4F0fyR6oQkN4CnFgUcF
         X8kfqFAp3DfDcxl/udHBtpR9Eu47OqsDUy5jbNSXwf7WERLjFN9PquF6u7WwzoAy12Yh
         qbxwhEklwZuaEqcoN1GVIQuqD7ceZxmZSSVgYgnGgBw+QDml87PrPrf+O+vP2d8DAjx5
         lbRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.216 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DvWZ18YvzNY38sP8t29fI+kAbJcuTJfzW0UI+7nlKIY=;
        b=shB8WddFQ80vcjIxWWXSRoyOyz6GL2jw778Riy88Y7/OnfQp4s2lbDWC5B5wuYatLp
         7sF/LGopbDuCy9V6YuYV6qVL/Vu9MPWPlJFNe4mzKrDpz9ZG1UljMDxZeNGo+bb2slTB
         g0z9dpw6C0ONKl+K9O/IWfYQPFAxIlQoL7EM7JcNHWugib6MoM0gImDCjLCWQ4wbOU/U
         Z/O3TbJN4U+ksPhXN3fYiIWDirAdypIE0ziRE1slc80MBvkhQNXIUyKwOopM2ZTSmuA+
         oGSvAZBzyjgGvgkMdcFYiwTy1toJk1yptBfusjk7oJTBWho/JZRxBj2Gs4Y24hsd+ot4
         Jifg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DvWZ18YvzNY38sP8t29fI+kAbJcuTJfzW0UI+7nlKIY=;
        b=JliY4KCEBHSsIBU9AzFoySIYi75oSehi66LNh8ny63PXnJOwYdkS/Dh2wX2XERiUQa
         5JXohnp7FLiFqBLh+qp8cKsPHf6NpWx9KCWgFngl7KOry2vnJugw21as9xw0wHc0tJQW
         498at2tv/iTOm+jWacaRZHQWbQb8QGAgLKNviwEzF9L3uYusjNtDFtRvHo5RPqeK8Axj
         B6jb38aff4AP3dKNi+tHrut2jgahI54Q1OZkyotlqpaWMou59sXUDV16DDLP4vlv+QdW
         3kxiQ7PWCPVlCDt98ffnjdS3LvKC44bzcUKEf969EqG9Y+e9iGOQtUMbpbwK57Mdb9tU
         FR6g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530gYCUTdMI5iV6CNnje6sCdSbXNlzsedtJPoGgN5tAlLYph2LpI
	W2y9j0UHV5eeYplREt5vvBY=
X-Google-Smtp-Source: ABdhPJzPWFCEqZR6nNV+oHtaq9doxgB2RUp8AePPlLQAHkEk3BQYk1OUnIEOxJ1yptGq288bRxkM6w==
X-Received: by 2002:a5e:dd0a:: with SMTP id t10mr8020775iop.9.1591871797552;
        Thu, 11 Jun 2020 03:36:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:4103:: with SMTP id o3ls532921ila.3.gmail; Thu, 11 Jun
 2020 03:36:37 -0700 (PDT)
X-Received: by 2002:a05:6e02:eee:: with SMTP id j14mr7490147ilk.261.1591871797256;
        Thu, 11 Jun 2020 03:36:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591871797; cv=none;
        d=google.com; s=arc-20160816;
        b=KK/0K8Vbdpzp/pnhuP3m0mvumJab8TtrzQgbggsXDSnYk6f+Rt8VFx5xEo2+dZ0/fv
         1inGRaJmjVNE6/yfjBKGN6gIlVZ0044MtIaAJc2ihQ8AUPtqkjCCScU1eFKkeUUKwJi3
         HvJUYvYZJ8387J/3Hc5BzrZ4/F84FXxL6ztcjJnU6h9AUMOzWlEYfVRo4nNXZsi5l0DD
         fk4tHvjs3ETp8E/NPylni/bWNLfG031B83mVLQK6Nz+Z+bnMa3qm1zYaYckefheqShph
         8SDXUPD385IT0eSKLHloBIZ7N36BfZs3d87SZJL8mPNoEZY2d9huRZqrQ1SzaFDSMuFF
         T8MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=4sdwuAA/RXI9Wvqlo6SRcgAW5vlSNhTn6M1XrDu3o4k=;
        b=A6TEtmhKP6Ug/2t7zlqBXlWtxp3XCdElzuQDAXjrW0vq2WO2sqh1/8z7au7wFO4M0u
         lh+Blb9TktnRrdYIYJkA8rRQGXn0tAhVsvAET1qU2OjwO/1j53ovQ1E8fdACU9XjrGor
         uNGdEobzgNaLwPIrz07wzxfhsD/rETCOVqKTeTJAcljKmPrwaQ8F0E3tOJ0rC1ocjz/a
         ek6Jwk1LtY0pdq0OIFvOKkSFET8FyKncQ4un1FL4vZTHjP150vppXGs2RUXVHjdjFCuy
         AdYb3+Xzlhg1fd8IKOXriD8ExN5XorGEQytuOXBr8fkOXga+e0wSJqXERhIwaWmvI24i
         Qb1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.216 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0216.hostedemail.com. [216.40.44.216])
        by gmr-mx.google.com with ESMTPS id b1si206141ilq.4.2020.06.11.03.36.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2020 03:36:37 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.216 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.216;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay05.hostedemail.com (Postfix) with ESMTP id 96B0E1802912B;
	Thu, 11 Jun 2020 10:36:36 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3871:3872:3873:4321:5007:6691:8526:10004:10400:11232:11658:11914:12297:12663:12740:12760:12895:13069:13311:13357:13439:14096:14097:14180:14181:14659:14721:14777:21060:21080:21433:21627:21819:30022:30054:30070:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: snake19_1e133c026dd3
X-Filterd-Recvd-Size: 1904
Received: from XPS-9350.home (unknown [47.151.136.130])
	(Authenticated sender: joe@perches.com)
	by omf02.hostedemail.com (Postfix) with ESMTPA;
	Thu, 11 Jun 2020 10:36:35 +0000 (UTC)
Message-ID: <4c6f8d63817cbc51765fd0b3046f81dccbd17ec7.camel@perches.com>
Subject: Re: [PATCH] .clang-format: update column limit
From: Joe Perches <joe@perches.com>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Christian Brauner <christian.brauner@ubuntu.com>, linux-kernel
	 <linux-kernel@vger.kernel.org>, clang-built-linux
	 <clang-built-linux@googlegroups.com>, Linus Torvalds
	 <torvalds@linux-foundation.org>
Date: Thu, 11 Jun 2020 03:36:34 -0700
In-Reply-To: <CANiq72=BbGqXmiG8+1QuJnLXMTwNjUg9WuWR9eJcLMHZ=k5hQw@mail.gmail.com>
References: <20200610125147.2782142-1-christian.brauner@ubuntu.com>
	 <c8851256aa453461481233e8a7fea878f9580c5b.camel@perches.com>
	 <CANiq72=BbGqXmiG8+1QuJnLXMTwNjUg9WuWR9eJcLMHZ=k5hQw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.2-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.216 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Thu, 2020-06-11 at 12:03 +0200, Miguel Ojeda wrote:
> Hi Joe,
> 
> On Wed, Jun 10, 2020 at 7:13 PM Joe Perches <joe@perches.com> wrote:
> > Ii think this is a not a good change.
> > 
> > If you read the commit log you provided, it ways
> > "staying withing 80 columns is certainly still _preferred_"
> 
> Yes, but the related email discussions were not about establishing a
> new hard limit, but about avoiding such hard limits for
> historical/technical reasons.

Exactly.  So don't set a new hard limit of 100.

This would _always_ wrap lines to 100 columns when
80 columns is still preferred.

Imagine using a 100 column limit where a statement still
fits on 2 lines.  Now imagine the same statement wrapped
at 80 columns still fitting on 2 lines.

Which would you prefer and why?


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/4c6f8d63817cbc51765fd0b3046f81dccbd17ec7.camel%40perches.com.
