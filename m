Return-Path: <clang-built-linux+bncBCIO53XE7YHBBRFKYXZAKGQEFSGAOKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E2F016903E
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Feb 2020 17:22:30 +0100 (CET)
Received: by mail-vk1-xa3a.google.com with SMTP id y28sf2335374vkl.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 Feb 2020 08:22:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582388549; cv=pass;
        d=google.com; s=arc-20160816;
        b=mxHZc0jG9f4mltEBNgGzD9PiO5Li4Ni0bymqV+L6CMV9rhLK+Yx7sCyVx2a9QoPrIF
         XlGxrlcjQIE517NE8iYMedz99lH/zL++wQOJA+K5DbZFEa4njTvq0fWf3InLCxLah++l
         c1jIhmJiPtJNiffccglqBoQ17Ux8CnYMWKkzGbt+H7nAlprdqzzXIz8IdobJHJhHkmVM
         lvh7NpIwVf3mwrU+iViD6JAYl/cZkCXqz2tqPXZie762EE7zcBVTVrPa5F9nSE4kOMNR
         TURktBNJUfwT+LYJ2p8UqE5s05mtm+q70EMBmfsDzTniFNSVgGAnfa0u4A03o8E1ac1Y
         TCPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature;
        bh=h0F/MJGoIyXEaqz/RW2fG8Y4lMJ9p3jjEFaZC4jjowk=;
        b=l2So1fWDpiuoDP/y0/tY5gbxpEIABdip7B4hbZk4IeoyGge9cSAxZ0zlwaFnQ0XnwN
         HvcwRrECKHuqoMGA3Mz5M1/l/oifh+ZJWtwlxoPA6PxXJbSDZqKtE3qcOFz3ukANZVqh
         6PHnwfB0NMLQKw4zLy3c5prGNfQXY5qBvnHWeOodyy/kk2acwC9Uecsiox4IPyCOJSXA
         QusfYSqCyofbycrUBRWfFjb0S6cGGG0MyLr33WqexnFUfqZFsZ4djkskGIC14O0yrKkT
         GuTrVZLj3ypir1tPfUEEZi0u/ofVeFvMokKjf5luwkOOhcKCSSwIjt0hrVvJdHUnW0NQ
         zorw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=epPAQj4d;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h0F/MJGoIyXEaqz/RW2fG8Y4lMJ9p3jjEFaZC4jjowk=;
        b=nyNefGOV13En2SsBrUjW9eEIHj/uQ+smdOByv+cu+R1KgQXCmMJyatsP+X+TM9SCFr
         bleizdwqks9QNdjcN2U01H+hcQuZ6XcduialxONfClRltviZMfqy/dOPmZL1/ZeBtQde
         tNDOJCe+hpyhD30dseoLXPc7HdiqOuxtmNDT/q3xIIGuvx3ak/WeyIVMp7sKevJjHT8F
         4PyJSxYpdSOsSpN9OvgmH6rn3tyI/+A2xEL9Ha79JA6zO0ofYcl5TggcDSdkPuesF6wS
         DGbX4byX7yNNKfRt1DF8mtAdD59w27hnPfhWKTZjOC17yPqYei7G/VILW4VVL/kOPrYH
         olWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=h0F/MJGoIyXEaqz/RW2fG8Y4lMJ9p3jjEFaZC4jjowk=;
        b=VnieMb6RscmM26Yf7UgglpGL43wp1+qrsVDgUWwHfI4zWhiPQeS7WKpHETkBym1rbd
         ELrKCoa4eIlTYmBsKV+IBbu3B/Hp32fata+jk3QxYm/OMy8wsXM/GxDaFqPueL3J0A3O
         /s5R90LgrPckJKN3SHKzAj2UW3vcbskm0pVJPo5AnQo5LQkPDfsfV/uaSdlXIwUA3Otb
         DrvGcqQg/2iEN9sG3Um8NFqgw7juNbaEbfq+UyUry61nmcKt+s9TYaS4UfY2qDMT11Kt
         irSRkew3kSEIM1Jmkxr8PnVg10w/83L5yJnF+d7gS8vfaHMv2ytDgbajNqStV2SeTYl+
         ZEUw==
X-Gm-Message-State: APjAAAWA1OAcG9M395cbLXISgwbd5DE9OOSkbr3oCQdeCZQZN0YvS1SV
	MvJclVuTMgtMAeyli4ICZnI=
X-Google-Smtp-Source: APXvYqxmAg+5vYelG7sOlBZ3Lq66bmF5+0OOVVREknd45SSvE0Kvv7CwsJVd7eV8QJsXCQ0+VsjTjg==
X-Received: by 2002:a9f:3e9e:: with SMTP id x30mr21648568uai.122.1582388548944;
        Sat, 22 Feb 2020 08:22:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:d38b:: with SMTP id b11ls612734vsj.9.gmail; Sat, 22 Feb
 2020 08:22:28 -0800 (PST)
X-Received: by 2002:a67:e99a:: with SMTP id b26mr22355611vso.27.1582388548446;
        Sat, 22 Feb 2020 08:22:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582388548; cv=none;
        d=google.com; s=arc-20160816;
        b=YEOjnE0602GMusUAsaEqGUN/uCGWJJgb6oN2NCOcMU0MohR5nb1OzKfGEcIOfJvT/R
         4pn21qoOM2w41Zu+C5epKhovU+5gKBGLI0DWdlBhA1vICQbzjUpZ5yQCc5Smwy3wbQ6d
         vipzDZZD2qlinSTCaNzhND7tBrt9Gjauewge6SQRmAAmZIhhCw5+6KD5Plq6ZGsb2BLN
         N0Nxq0S8zjH0IHLly9QfUjGTStj+de5LlayiQ29x3IVSRtnsvuGpvQx8tWDr+lV8Ayjd
         4cw0g3p7iwNAZsdPiy1sxqyhBdGlk/LkRnP9hnR+PTiLZw3eQDtEMPWaYmkYgHyF3PBm
         QoZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:sender:dkim-signature;
        bh=MdqxzzXPoIcQtN1yVVsOrdqBL5LnseCidtxS+ZQd6qM=;
        b=iKbnRNSkxkPhD/xuqzRD5Ckr1duZe5LshpOmvJ/rstt8Gv1Lcj5CVNsjZ01bvAI9Qf
         rtySH4fbZrFnXMseA/v26RGpClijfPRFl0z/lyvVNuIxNHM+3DXdh+H+Mc3bEyDt6VB7
         T9gYafeSl7EcZbnqDcZf8yafb3OtOLOFCD/w0u8Nrq8gK1+pMVO+AVMvaZjJ7fgwZnmW
         jinHdK8+/CjLfEOrCZ8tQR6m84oMK7uRmcPQQdFg0IMVLYELdE1go/Pm/QRUymmNjKN8
         C4WbFx/B1hA3rptJL4QZOVAq44Isb758uHbsDlDIGF85Q3eug2+PN2aLSrcBTz+4wfjR
         Pb4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=epPAQj4d;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id k26si335172uao.0.2020.02.22.08.22.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Feb 2020 08:22:28 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id h4so4906360qkm.0
        for <clang-built-linux@googlegroups.com>; Sat, 22 Feb 2020 08:22:28 -0800 (PST)
X-Received: by 2002:a37:6650:: with SMTP id a77mr34249151qkc.343.1582388547911;
        Sat, 22 Feb 2020 08:22:27 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id g19sm3212418qkk.91.2020.02.22.08.22.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Feb 2020 08:22:27 -0800 (PST)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Sat, 22 Feb 2020 11:22:25 -0500
To: Borislav Petkov <bp@alien8.de>
Cc: Fangrui Song <maskray@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, Michael Matz <matz@suse.de>
Subject: Re: [PATCH 2/2] x86/boot/compressed: Remove unnecessary sections
 from bzImage
Message-ID: <20200222162225.GA3326744@rani.riverdale.lan>
References: <20200109150218.16544-1-nivedita@alum.mit.edu>
 <20200109150218.16544-2-nivedita@alum.mit.edu>
 <20200222050845.GA19912@ubuntu-m2-xlarge-x86>
 <20200222065521.GA11284@zn.tnic>
 <20200222070218.GA27571@ubuntu-m2-xlarge-x86>
 <20200222072144.asqaxlv364s6ezbv@google.com>
 <20200222074254.GB11284@zn.tnic>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200222074254.GB11284@zn.tnic>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=epPAQj4d;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Sat, Feb 22, 2020 at 08:42:54AM +0100, Borislav Petkov wrote:
> On Fri, Feb 21, 2020 at 11:21:44PM -0800, Fangrui Song wrote:
> > In GNU ld, it seems that .shstrtab .symtab and .strtab are special
> > cased. Neither the input section description *(.shstrtab) nor *(*)
> > discards .shstrtab . I feel that this is a weird case (probably even a bug)
> > that lld should not implement.
> 
> Ok, forget what the tools do for a second: why is .shstrtab special and
> why would one want to keep it?
> 
> Because one still wants to know what the section names of an object are
> or other tools need it or why?
> 
> Thx.
> 
> -- 
> Regards/Gruss,
>     Boris.
> 
> https://people.kernel.org/tglx/notes-about-netiquette

.shstrtab is required by the ELF specification. The e_shstrndx field in
the ELF header is the index of .shstrtab, and each section in the
section table is required to have an sh_name that points into the
.shstrtab.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200222162225.GA3326744%40rani.riverdale.lan.
