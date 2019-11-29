Return-Path: <clang-built-linux+bncBDJI5MPT4AIBBE5CQPXQKGQE6B4AVXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B71410D232
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Nov 2019 09:04:36 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id c6sf15115536wrm.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Nov 2019 00:04:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575014675; cv=pass;
        d=google.com; s=arc-20160816;
        b=nX3iYC9YbcRUyCuJlh99M/RrmGQqvto+IgxS6RQjfbrdU5JoimaS9PsoiqgS/pFYS7
         Th3CC0yVOYw41dPgyHnvdY1i9TyLhtqTJ8lAjVUVjddGh6WYQEFXcP1OUyg+ee1jjMI6
         wOwof2qTSAG5uKxbTV8vrAADVNV9jMw3Z5XeD9Tmz67xX8Zg5ESd8ietJKPydbIbNe6T
         D3S3w/USnUc1DvAzzWvIGAuznGnKMKbAqCVaIC9R8RTc5A/4CTnmdoilL0rDRBxoydHD
         igXknd3rDs5MZHcd8gGxsJxvOVh4CaNIfTVSE4swWRDDP0ca6wGRNqaonSsuOvojUvPi
         9CIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=n2kDiodg6imfOcOuuehUxGRcXQtVeh/QsuH+MhWQu14=;
        b=0fHmx1BxMxsYNJLDQnUb0HA8/NVitOlXD7LqxXF0/8Il8kB6jXCxC/0ki/aS5jdHTx
         j45w3ZB9dgr/yX8oWq4TcyP+i9k2C5sRLbH+IxtQ9M0GAhtr3/mgnOBnPmsOfBw81oJG
         dbrNgxWNnZSWilQt7Ku+RKS1zCT+JK9dn8ErKh4E/ic6oTZ5ICWK9ysLisOQWiC3wsf+
         BiV0Mb4TYEELcdQ15xMCBpvWAwYjomwl86wFQ8T6KXo8v84tW+RcZnQKKpBwsFmQRVKS
         2WUFQuA1XpXBWUxUAnkL/wTtudLFfElnfQVohvUOEOpO3VPHZh3+Elu+lWnsTYvCzInq
         qw6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 193.147.175.20 is neither permitted nor denied by best guess record for domain of pablo@netfilter.org) smtp.mailfrom=pablo@netfilter.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n2kDiodg6imfOcOuuehUxGRcXQtVeh/QsuH+MhWQu14=;
        b=brg03zGEErl8qML0UvWVg6fehGbO62pNlwlDqBIYyIDWGP1muDVzPDSyIU/zKeyMNe
         3IF+vYnK9S9AP/yRsxvcSi35RJmptqmNjSQiZSlEdhpa5B97kQM7k90GATjeu/bFa5Sj
         anhvjStjfWcy/d0QEdnVQAicYf45qtv5sS2iPvvAXQeB9jrpQuT+f3iQ5nthQRRXzOMx
         P4wt1+J4i6mDb4hYx5rsCCzwQMQaSq48vDP3sYNRD9DJytjSp1+4INNiNU85okk80/GP
         qAdzxbU0wRpvEUmGWAGFej/yOMnS5uA3QoNTC2db38Zu1OcMvt3bVUzmXvDooH22Cbxs
         zlpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=n2kDiodg6imfOcOuuehUxGRcXQtVeh/QsuH+MhWQu14=;
        b=Ce3zAmJeq7kJ+FXL59TTC3TB3bTLCYbfmg1n+/1r1SmZRpldU1ibzLdEjnhMPEUNnc
         ZQigWSVY2nmggMnnGeX4x5HAuM32iXufBtLgN/FcOxMXoSmmMTPTw4WtkX9Yx4ttA8XL
         yn0IlVR6bXsjQpUu4MTI3XKHZUfLnFJY25iBADTK3werGIuMrfDOcvOJDr/Zn/K7DtmJ
         MjLMbG4k301BMDMOtAyHnhS74KcH0ILu9vnpBFXyUVeTK7e4zsJvaRaI8L9zCTBdRGRQ
         Ffc+wXHCJkA6g0fB5+NHrqDYsrYGf8R1Yt8lLSf8+v9rGESYflDPxsGJShSEaYsMyc9t
         +Q0g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXrNBZi5WcShvbC64Mng75sNpvvLurWIaxIJnzEUAZiznQk+GoD
	XWkPbZ7m7rBduuJlk3QtiqY=
X-Google-Smtp-Source: APXvYqzEXiV2YWqI0zk1tf0+2wtDdYr2B/JQi3G2wZ0w/g3BZ83jXsqg1SZauF0XvdALlwUpPJZ/iw==
X-Received: by 2002:adf:dd4d:: with SMTP id u13mr34317788wrm.394.1575014675851;
        Fri, 29 Nov 2019 00:04:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:ca52:: with SMTP id m18ls4915477wml.4.gmail; Fri, 29 Nov
 2019 00:04:35 -0800 (PST)
X-Received: by 2002:a7b:cb86:: with SMTP id m6mr13921286wmi.124.1575014675199;
        Fri, 29 Nov 2019 00:04:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575014675; cv=none;
        d=google.com; s=arc-20160816;
        b=FC743AwJ22CYOSYV/e91EVxmU/cEV6gnkMbj9ttbkqh7Zp8Nv6z3YV1/Bpf/EtV0am
         CNgF4J+wzvltUZPoE20YfSTuTS/3aGt8EUVzYaCz9lsSdP3WPWZzqj5bfjQlqqdraKzE
         jv5OHdhXUORep8fNUZndx3jAjfU9/j6sv9X03Tibi3vdCtNTqLNFhpikV6GM+xnGa9J1
         WvEVI+w/4aO0O0aqPiK7CwTm4z1R0Qemc5EWXCj9hjCPfWbSwdItCCIRs3d41kff1/kW
         H401fZskVsL8nH52Q2auVCs6PnRq1eUjXfm/XlX3nlTh8rSV4w1C/G7+C9aSZxbFTVda
         +hEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=q+WPOaxkmQOF8kMzMlKFC/xf4hN0NZ6TYFGYV52/vgk=;
        b=x2DD3MhwoOhlw+mwksOl/8ynfqgj3dtY3zUxwIvF6gtI0bLOvsxmFTMGdChJvsVT+L
         i9Ef/8ogILfktyfrcGqpCZUPZnqJfRv4lyo4UPDRRNR4LVQtqYM6f38+MbZjbZ9rQp5z
         Nm7IYIUQDQwtRguAznYgBKgeoewzocHCQWGIGst3ilhGDkx3AwN5kxPjuVaWs97XdQj3
         gWEz/MVWVxf8aLnxTWt4AytLYKXLvCdI00wHYTAlqVLWt3Q3eiwhaWnnbDgrrockYvzp
         awPvbQyZAyEDZ1ubqVAB06b7VQZfkARLTvYq9v3hTD91tgMwf3KkD9gdk24+Tpq4rKrs
         G4nQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 193.147.175.20 is neither permitted nor denied by best guess record for domain of pablo@netfilter.org) smtp.mailfrom=pablo@netfilter.org
Received: from mail.us.es (correo.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id k189si95633wma.0.2019.11.29.00.04.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Nov 2019 00:04:35 -0800 (PST)
Received-SPF: neutral (google.com: 193.147.175.20 is neither permitted nor denied by best guess record for domain of pablo@netfilter.org) client-ip=193.147.175.20;
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 3E1E627F8D4
	for <clang-built-linux@googlegroups.com>; Fri, 29 Nov 2019 09:04:33 +0100 (CET)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 2FE9ADA70E
	for <clang-built-linux@googlegroups.com>; Fri, 29 Nov 2019 09:04:33 +0100 (CET)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 132B0DA714; Fri, 29 Nov 2019 09:04:33 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-108.2 required=7.5 tests=ALL_TRUSTED,BAYES_50,
	SMTPAUTH_US2,USER_IN_WHITELIST autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 0C517DA70E;
	Fri, 29 Nov 2019 09:04:31 +0100 (CET)
Received: from 192.168.1.97 (192.168.1.97)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/550/antivirus1-rhel7.int);
 Fri, 29 Nov 2019 09:04:31 +0100 (CET)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/antivirus1-rhel7.int)
Received: from us.es (sys.soleta.eu [212.170.55.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: 1984lsi)
	by entrada.int (Postfix) with ESMTPSA id D0C0041E4802;
	Fri, 29 Nov 2019 09:04:30 +0100 (CET)
Date: Fri, 29 Nov 2019 09:04:32 +0100
X-SMTPAUTHUS: auth mail.us.es
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Jozsef Kadlecsik <kadlec@netfilter.org>,
	Florian Westphal <fw@strlen.de>, netfilter-devel@vger.kernel.org,
	coreteam@netfilter.org, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] netfilter: nf_flow_table_offload: Don't use offset
 uninitialized in flow_offload_port_{d,s}nat
Message-ID: <20191129080432.jnsghajoenturr7v@salvia>
References: <20191126201226.51857-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191126201226.51857-1-natechancellor@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Virus-Scanned: ClamAV using ClamSMTP
X-Original-Sender: pablo@netfilter.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 193.147.175.20 is neither permitted nor denied by best guess
 record for domain of pablo@netfilter.org) smtp.mailfrom=pablo@netfilter.org
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

On Tue, Nov 26, 2019 at 01:12:26PM -0700, Nathan Chancellor wrote:
> Clang warns (trimmed the second warning for brevity):
> 
> ../net/netfilter/nf_flow_table_offload.c:342:2: warning: variable
> 'offset' is used uninitialized whenever switch default is taken
> [-Wsometimes-uninitialized]
>         default:
>         ^~~~~~~
> ../net/netfilter/nf_flow_table_offload.c:346:57: note: uninitialized use
> occurs here
>         flow_offload_mangle(entry, flow_offload_l4proto(flow), offset,
>                                                                ^~~~~~
> ../net/netfilter/nf_flow_table_offload.c:331:12: note: initialize the
> variable 'offset' to silence this warning
>         u32 offset;
>                   ^
>                    = 0
> 
> Match what was done in the flow_offload_ipv{4,6}_{d,s}nat functions and
> just return in the default case, since port would also be uninitialized.

Applied, thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191129080432.jnsghajoenturr7v%40salvia.
