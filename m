Return-Path: <clang-built-linux+bncBCTKRTXYNEIK7ZMPREDBUBCBJGXK4@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A4D3F510B
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 21:10:40 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id nn5-20020a17090b38c500b00179d350674asf425503pjb.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 12:10:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629745839; cv=pass;
        d=google.com; s=arc-20160816;
        b=wyeMaHYERiBKgCYzipL4rbKyNOrfm3Tk1ExyKLySfh35znk7Elh/IqrZsPyjudj3E2
         0vH4Uv52oKYls67qpJGX25Yy8Mehyi2QORnSClNXeLAMOKmxXyzY8E7S3AZrnkivfZI6
         poo56YU1V9NOxyIdtGSZ353gG8XrlHhZWMlhM7W7is0cqMC7HFj2Tk6h0oj3DeMnjwEs
         kfsTEdhrN0R5NKJXSY4Pr7gQlGzGXAnSyZwOZPZHqUUMqXTwWTCT1c0EjAjhrpeO1vuJ
         H/nAnqCN8yJAIaV488oTGN3hMnCp02BXIdxxceI7iBUthzhfF6z2FPFERsneWgVK6S+5
         e4/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=LqaFJgEfRyDqfNeP4wRGSJcD4oVQx+lXQuCrSg8/Vfg=;
        b=QcBv1JaXKXFs3vmglSjm0XB3owmr7KX5kjrEvBxHIAtvUtAsTlp2oUYWbIxlZHH+8e
         QH56+EmSHfJC8UoBv6M6mnO+YqiESYVQ2TDoTh6CpnDrSJuU15wnTPh6WmtclpCJOxZC
         iviRLj3YkJeOVf/KZeLT8MP7t2D2A9XBVMc/HvQP+GWu8OYtw7b6Yh2PW9GswQbHtiQY
         88QjY4WdUWcNWSH2kg+H0kOIOCDktwtfoGZMmAYYnhsnXp1p+GzT1TkBrs5WbsZU8DNl
         WuyBErsDVRopM5fm6UlJsOZzRu0Xl8ZPYjxLbc/QtgCXakRNwdsM5V3yZmYhptrHnauB
         9ffA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of fw@strlen.de designates 2a0a:51c0:0:12e:520::1 as permitted sender) smtp.mailfrom=fw@strlen.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LqaFJgEfRyDqfNeP4wRGSJcD4oVQx+lXQuCrSg8/Vfg=;
        b=KTcS2VmnoHscqMzo2Vb4WhZ7XxwyFyzjlxPX3uGpmzDlmqaZ+mDaWKDdWIYFHRS6N1
         vlIG21SC+bd76fjw5LI6CkWlrdC4b0Hnkx8SuCQOqktwsqojK3/yJR/AGe0zWOvnd7lX
         PTWpret591175lUwyvnn+3IKA9O/ZMQ4DYd3AxWJDAFaI4/IBKRrlv1AtS5khvbfH9SO
         kfuA6GKf9XnysppIOleJRBqawYifnRYOnHqPAeT+FAxhzn1o4BoixxUIjicnd0SdcYPF
         kBxXQKd5R5g5hLGpxJfAybxYg9T7MAd3lSCYHFAHOKOMvCVwlg5bxHzJPgKl1+0ZRKME
         DZsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LqaFJgEfRyDqfNeP4wRGSJcD4oVQx+lXQuCrSg8/Vfg=;
        b=qkRaM8XM+RM3LivqqHFjWsMKd8zBeA4QoB3qmaUUCw9LA1WQ8EtAXRDp3RMSZqyBTe
         OltrEzJuqu1PlZt816AUsgJbB8l+H8lYuLhbIxYHWX4E7Uyu83deHMtIYR4bN8/23RLr
         TAgF8K8AlBbY21UMjzZmHM0MNIBy6/7ukosQlIanCKN5PzMXd85LLoyp8YkKJ0p/BRdV
         1cQ55ZVZe6JO0xHg1FVZ6JrnI6ekXKFm/Ap2ugbWZ7YpD7rf+Kl5dliYyVKl94Bs1H1H
         RNGV2QgL2jFJtDTLJBU/NlzpXFkCyHuJIBiaA7kdxibPpdcvx7zHbetznDzNxtwbLHmg
         Yvzw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530eVmYV6P1PNkGrZgC8MHkzAtTKiaQpsLbF5qWj1hkIIhGs1EUy
	2tGX3q0/WEoljum3v2i7k3M=
X-Google-Smtp-Source: ABdhPJzxt2nDXuvUHj975XtmXz8lsJa1gVNqr60B4xYoMQnXBMJMHnuu/876ZxEMaC02s2crA4APSw==
X-Received: by 2002:a17:90a:9411:: with SMTP id r17mr67698pjo.49.1629745839642;
        Mon, 23 Aug 2021 12:10:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:aa03:: with SMTP id be3ls2840156plb.7.gmail; Mon, 23
 Aug 2021 12:10:39 -0700 (PDT)
X-Received: by 2002:a17:902:848c:b029:12c:daf3:94f1 with SMTP id c12-20020a170902848cb029012cdaf394f1mr29897874plo.50.1629745838945;
        Mon, 23 Aug 2021 12:10:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629745838; cv=none;
        d=google.com; s=arc-20160816;
        b=iOX2MqJYrdkaqxEM2LRkJB4FelF4EQ01fZmUWqtnMQl1sTCGqFZGB7CllNV6bmtBXi
         YtYicPtSLZt13iCI/WEtmPk1TyqkcNLqMpB8OBnJAd2iYBG+ELbWz+2YQhFZfc6vDQlo
         7Tpm/G0d8Bm5OxCpWbrxM0CjSbnuXM93d7aSDcg9DHWMeSZlOwjzDZt/DBh7gugEtHCC
         8iNxZK25vXblLE/dPYslPOalT6R+q+XdZoWPgPMpfPAInCfwwpfPXV018GK+zK6Jik/a
         V1MrLW2VWnSVQUn5D1QWsScB4IFfVzJSqp0wj4R3SW5rWI0ibtIEPr8GeVLfgLZh7YQy
         jVdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=M0UjFnGfG+BuvZ/ac7sagcV60+eT4JHsPbYw+Up7L1k=;
        b=MBqQ+wDg/EwokYGtSGSAqCXaHHphSwJqc28/eUqCsT/5SvQKhNGqJkw3R83nE9hkc3
         5VMbZIIM6UbV5ZZ7ngsRRvPUk+OQirEnMmGY/RYXFs7sWEPmXit0VkF2IXNC1A22/mrJ
         vd+ukop/gh0xPgSsFVO3w6g0BaX91/27SNMW5Z4dJ0drIT/luJ108SVoD1oBrY0fPqzD
         a7UZW5ukxrPWeTZV+F8al/cOjiN4v0sxDbscvQTBruPRMnS0DZ3f7zVFiFbQV3ChBnXk
         qO2zFMGU7gmmAzpEd3Ks3Vpde6BE5NVnvCY1ZvVDMOtBapQOBaGxEDslHE0KxsmbLYVg
         DaoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of fw@strlen.de designates 2a0a:51c0:0:12e:520::1 as permitted sender) smtp.mailfrom=fw@strlen.de
Received: from Chamillionaire.breakpoint.cc (Chamillionaire.breakpoint.cc. [2a0a:51c0:0:12e:520::1])
        by gmr-mx.google.com with ESMTPS id w7si432190plp.2.2021.08.23.12.10.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Aug 2021 12:10:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of fw@strlen.de designates 2a0a:51c0:0:12e:520::1 as permitted sender) client-ip=2a0a:51c0:0:12e:520::1;
Received: from fw by Chamillionaire.breakpoint.cc with local (Exim 4.92)
	(envelope-from <fw@strlen.de>)
	id 1mIFL7-0004q7-4Q; Mon, 23 Aug 2021 21:10:33 +0200
Date: Mon, 23 Aug 2021 21:10:33 +0200
From: Florian Westphal <fw@strlen.de>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Pablo Neira Ayuso <pablo@netfilter.org>,
	Jozsef Kadlecsik <kadlec@netfilter.org>,
	Florian Westphal <fw@strlen.de>, netfilter-devel@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Netdev <netdev@vger.kernel.org>, coreteam@netfilter.org,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: Suspicious pattern for use of function xt_register_template()
Message-ID: <20210823191033.GA23869@breakpoint.cc>
References: <CAKXUXMzdGdyQg9CXJ2AZStrBk3J10r5r=gyiAuU4WimnoQNyvA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKXUXMzdGdyQg9CXJ2AZStrBk3J10r5r=gyiAuU4WimnoQNyvA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: fw@strlen.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of fw@strlen.de designates 2a0a:51c0:0:12e:520::1 as
 permitted sender) smtp.mailfrom=fw@strlen.de
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

Lukas Bulwahn <lukas.bulwahn@gmail.com> wrote:
> Dear Florian, dear netfilter maintainers,
> 
> Commit fdacd57c79b ("netfilter: x_tables: never register tables by
> default") on linux-next
> introduces the function xt_register_template() and in all cases but
> one, the calls to that function are followed by:
> 
>     if (ret < 0)
>         return ret;
> 
> All these checks were also added with the commit above.
> 
> In the one case, for iptable_mangle_init() in
> ./net/ipv4/netfilter/iptable_mangle.c, this pattern was not followed.

Thats a bug, the error test is missing.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210823191033.GA23869%40breakpoint.cc.
