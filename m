Return-Path: <clang-built-linux+bncBCS7XUWOUULBBRHTYXZAKGQEFSLJXAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D63169156
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Feb 2020 19:58:14 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id v14sf3207752pgo.10
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 Feb 2020 10:58:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582397892; cv=pass;
        d=google.com; s=arc-20160816;
        b=oSjg1Hjucv9iG4lVLH6FRjH5O1Wyv9nTxey8YJ3/H97ikLOwGi7NZYtyGJjGB5lwWo
         B0aVs9QONHrmN9fcugVHHz7nE+luwbPDJlQKHxQwtaAt+QRM3diGtcBOv3JGhPDiXs3w
         tGJ6FmwhDrX9ZJlzMKw1PvyKvlJ1idH/upFRep7PelHkNWINe03TWNVBO8l9PYKqRYvP
         AuQ1nzPmQUXvJg+5YfDuMk1hoKsaaiVdx0eeeQvp1XfWM+/rh+s39zNfwoFbVU3IRNmg
         MHXZByvbTDp9R53Iqjxij+VXBuIVnY/SHmjT/FaOHDVeek5mriSwdp3KFKpAj+4Vt09o
         EsTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=8hYaNN6juztTjJoyAKZayvDA+DoU3sUHsdpvyRfwwzo=;
        b=cdJpoLKf5Lo/CRtyk5SY5sqZsGuAWP1hv5z8v/TxuooPgK+5qVNxbMUFS6iaEuK1Ic
         Gk5eQuQD4Z1nz54sKwF/Bc+jJkY7RfmdQTEjh8oHxfoZcJEezn0Dw436Cjmvy3ck9Wpt
         AbWciCSKB4w7KmlFyeLAdKcxIR3wXEvwInJvgunqaAVhqQ6DM20UzKRq/KfKA7ed6cTa
         7zHgo49lFpp9/e6Sy5l2eij6oJliuhu2snrBcBkhpq1rnGBeHaBG7amKxfX1PmXom+xb
         2Xh5RJ/7a50pYoyG2xVbSt80k37lPFEtP/yiN7K8dnCXZx169Z7D49eAcf21pJ2oSNNB
         odXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LOr6ninH;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=8hYaNN6juztTjJoyAKZayvDA+DoU3sUHsdpvyRfwwzo=;
        b=gJrh1bQ86mNV7uIyuGekI2O4ua3rZhi8xcKWBsHGAUdAU4HQQtUKPi0kj88ZHDNn8e
         R2IbEMqzIMztdpWZLmc9NIT4BLoklMng+tuhrsIge2OiW5AX7ul8q3QtXN1DCk/9RCW1
         8M8o9k3PrMbH32tr0F8HAY9BTq/AsoA7x5Lhz80aW84i0VEZCSlQqSqvojXm2nsHhBHf
         rfuAwhNABDkCeZaSxwBKObIz3O/5eJVYLSuqnLRsG3k4CVFlJ1aHFdyZ1pJ71DiFtiZi
         OMVAhuK/NIe2yqD6/jFfq+jpAIrfYmPE2RdlVj9nCykyN3GUYQVrWLxKpGnesr8qqQmV
         PjNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8hYaNN6juztTjJoyAKZayvDA+DoU3sUHsdpvyRfwwzo=;
        b=PiBao16HTDksxNUAzRXq5NawIObYzjtMxURoloxFGIjCQYDi3Ei3Eg7nyxBwvWgJ4G
         haohjJoqL4pejpsUZrUn1yf6UazVEYURvHHsqtBczfzqT8CAnSGhY290wyuml3YgD2BY
         JleCt9639f7V0UDhkUDYXZAeL4RJPvXxYfQBe+s7yL5WoqtAoszUzcRGyO8v6Ka7oybl
         6rX6h8G48KQppoRYy8bHN7ZLzDeZ4WZLJXX9XQ7AqgFGFs8JsQBaA8iQwu+DuorMr8Uy
         N1f048lxBj9ycPlps8XKIyc21ERbzout3suhMIGvuLVI6/nS8kIQFwdCuebvFWxQ/0sS
         1hCQ==
X-Gm-Message-State: APjAAAWkM9j6rz//dTxX/HxxWiECU0Kfq2Ry5qT5j0mv22uzj149mfxQ
	Ahx2Yodu04Q7D7ZVDH3oY5U=
X-Google-Smtp-Source: APXvYqxWmDNiGhJYxnPKOtstSn6UT+Z5XxFrmURmg0nb1va3jgxh8HvSqu4nZnQgrcvchE2WtMzpgw==
X-Received: by 2002:a17:902:9a09:: with SMTP id v9mr41263318plp.341.1582397892734;
        Sat, 22 Feb 2020 10:58:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:b26:: with SMTP id 35ls1925955pjq.1.gmail; Sat, 22
 Feb 2020 10:58:12 -0800 (PST)
X-Received: by 2002:a17:90a:7307:: with SMTP id m7mr10790087pjk.75.1582397892387;
        Sat, 22 Feb 2020 10:58:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582397892; cv=none;
        d=google.com; s=arc-20160816;
        b=vE50zorUCdlH1nS0OHDnqvExuWGsLkkS1DYzFEbxR2CpENLXKdkwVhzHWE+QPdAB2v
         siqEzoMlZlULySPaqdPBnhISQtVIiCyN9g6SmGNMRvVnbFkKDEOzw7ru3OyxsvEvzS69
         2KuaIvrvVsVpJdPQu5l93cY6bxvCz5Wjtq/CDP3svcFNJ+42yMcMuexL5wvTY31cOmbA
         4asWQPycdPaeUnf/+b2IVNs7HiDRerCZ+5ykP4Ro6CGv3uehPhvJ8sn58iMFPIc6Dcw5
         Sp721m4gdzv+j27WamoBJuZFU0S5zWH1fKPQneyQGSHZJ8AIacdt73st3CiR4OztC8bk
         /Low==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=euAwmf9ZhKSh37U9bkj0mMT6F/SgMII2G3vEqdzGF+E=;
        b=Kcs2wUs8KDc4/C/EeatYblwcCXD5JvFmac0jA9CqCnAqX+dpMDQ0ZQnEIVFkUbUwGl
         uwL0/T8j88tIPYUz8Ojm+cK5D1vYOuNy6h7AL9+/Cq51wXVXKxwhsdHktypYkI8Fki9L
         ISsDtJe24MMsn0ubkwUHLbh4R4M93YVZoGXxKVBoWuiNBXublPdh+eOpsobVUBcRk3uc
         aMxxA90aVfKl1zSaIroa0eA2fOy9ZnVMrXRSvyuOfThxaHajITTdpKL2RwNqXykGNL31
         5sbOuKYeHtPoOyELO3dg5V7BjgqphIv/ulQHVqdtsO5egxKlUMI1z2q86vC3EhZplgtq
         R8LA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LOr6ninH;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id t34si407841pjb.3.2020.02.22.10.58.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Feb 2020 10:58:12 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id 84so3066490pfy.6
        for <clang-built-linux@googlegroups.com>; Sat, 22 Feb 2020 10:58:12 -0800 (PST)
X-Received: by 2002:a63:7453:: with SMTP id e19mr16713707pgn.50.1582397891896;
        Sat, 22 Feb 2020 10:58:11 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id f43sm6640138pje.23.2020.02.22.10.58.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Feb 2020 10:58:10 -0800 (PST)
Date: Sat, 22 Feb 2020 10:58:06 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Borislav Petkov <bp@alien8.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, Michael Matz <matz@suse.de>
Subject: Re: [PATCH] x86/boot/compressed: Fix compressed kernel linking with
 lld
Message-ID: <20200222185806.ywnqhfqmy67akfsa@google.com>
References: <20200222164419.GB3326744@rani.riverdale.lan>
 <20200222171859.3594058-1-nivedita@alum.mit.edu>
 <20200222181413.GA22627@ubuntu-m2-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200222181413.GA22627@ubuntu-m2-xlarge-x86>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LOr6ninH;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2020-02-22, Nathan Chancellor wrote:
>On Sat, Feb 22, 2020 at 12:18:59PM -0500, Arvind Sankar wrote:
>> Commit TBD ("x86/boot/compressed: Remove unnecessary sections from
>> bzImage") discarded unnecessary sections with *(*). While this works
>> fine with the bfd linker, lld tries to also discard essential sections
>> like .shstrtab, .symtab and .strtab, which results in the link failing
>> since .shstrtab is required by the ELF specification. .symtab and
>> .strtab are also necessary to generate the zoffset.h file for the
>> bzImage header.
>>
>> Since the only sizeable section that can be discarded is .eh_frame,
>> restrict the discard to only .eh_frame to be safe.
>>
>> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
>> ---
>> Sending as a fix on top of tip/x86/boot.
>>
>>  arch/x86/boot/compressed/vmlinux.lds.S | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
>> index 12a20603d92e..469dcf800a2c 100644
>> --- a/arch/x86/boot/compressed/vmlinux.lds.S
>> +++ b/arch/x86/boot/compressed/vmlinux.lds.S
>> @@ -74,8 +74,8 @@ SECTIONS
>>  	. = ALIGN(PAGE_SIZE);	/* keep ZO size page aligned */
>>  	_end = .;
>>
>> -	/* Discard all remaining sections */
>> +	/* Discard .eh_frame to save some space */
>>  	/DISCARD/ : {
>> -		*(*)
>> +		*(.eh_frame)
>>  	}
>>  }
>> --
>> 2.24.1
>>
>
>FWIW:
>
>Tested-by: Nathan Chancellor <natechancellor@gmail.com>

I am puzzled. Doesn't -fno-asynchronous-unwind-tables suppress
.eh_frame in the object files? Why are there still .eh_frame?

Though, there is prior art: arch/s390/boot/compressed/vmlinux.lds.S also discards .eh_frame

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200222185806.ywnqhfqmy67akfsa%40google.com.
