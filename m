Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBRGF2TUQKGQEVTGECTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 34DCB6F741
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 04:43:17 +0200 (CEST)
Received: by mail-ed1-x537.google.com with SMTP id l14sf25420858edw.20
        for <lists+clang-built-linux@lfdr.de>; Sun, 21 Jul 2019 19:43:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563763397; cv=pass;
        d=google.com; s=arc-20160816;
        b=clrKFHvXXz11zJ3dNxWvk/MpJckFYJtnHjRtqOhHW8wdOuSI/pDwjRU1oWScxA7iy+
         HNIZs8G1N5qSM4AdSFu3oOj92+lxSOx3jIHuHn2L4C9HP2i6XAFrr1ocDNpMNp90DJ4d
         0QXpH7AwDR5tfVoktb9Z6rpdbSS/WWAxFTiqSjqMjBm4b1ydyAc2lHZnAnn//2DcjKYf
         NixTr4wnu1MCTvRKaSaZzlcK5zEIs7V3+bRP/vwxonaxyWfGs9cMX9Duglc2ShNP3yv2
         tEZkTepBWTQxOEV2J+T2v6/jWCfqxY0cGRKnfBURSpTtxcNiLZhuDnIl5LQAHlJ2tgOU
         0UGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=hMI67sQPeUgCqI6gVSp7RvI1U4SilSZrz97exEnZLF0=;
        b=S/uQ//ku2HFFZ0N/sqS3JCw+W/n9syM46v4XSIKN65kjXabVtjS35N/eA9H149omwp
         3AIsVI65aHI86j7ir3EZCaJi1QFXbtlfJSMaEkunKes3uqi02kHk1YLUx91wbZQAdCfl
         xvPjnjSNeoZV5O7aEi+BOk4dzuI+ykMvO0zLYXK3YHBsZ5gIjxn7UPtu2AOVCwJrOEoa
         7vfNzjNZm137eN/622usc2WE+Ccz5ZRxlselUB768j1fiz1UNBXi9tFrVG5eUOLMsgpd
         XyAWcJPBv0oaP1TlLCacM44DTBsGAZ9bdsShWaCMmZhyqhJZM+zgghloguSzrYewGacx
         vonQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Xp2/lYdr";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hMI67sQPeUgCqI6gVSp7RvI1U4SilSZrz97exEnZLF0=;
        b=Zw0yoDxmxUG9gB1ilexl0tXII6zkaDjtDXjj/2lkqL64i4l/L5S1Vgfu5P9AFBY5x/
         8BQFNBiayWXa7Nt3b4J5Zmw5jyG/gki9ekdiryRKTAFyXLtqjWZlS2SERn9BwlOSKZ5N
         2m+eR4n3fgZqLublQzc0+0LKzhwBwledD7olfCpf/R9tPfJ55/Mp5N2nphF3JvgtPHQA
         gzcDuCHz80EI+wvJ1q30KYiW0iS+yNyU4A7vNeQUiq/UikDZHV2/aQOzIMyOR77/Ohka
         bE28EM29sxqsk09DASHaXQRKfVo+6Fu61SMxu0SWgdyogs0aqvdRIjuKW+oo39TOkCHk
         j7WA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hMI67sQPeUgCqI6gVSp7RvI1U4SilSZrz97exEnZLF0=;
        b=TTCia4c1TL7RVi0QYnkaRkC/wqBZ50aLaDzT3iqtu7siDPpA7LbeZJrXeQxQTVitP3
         CFUq5Nv4HS+JJ1ox18giQGMEg6AhGml0sRxfSWR4xJt5xMXv4bdWh5/G2C3fH5VAxgsV
         a+U/fhM5AdqAyiHa2wbO8NlallqhJKPJTJbI09yylLiCYDoV+BIWUaa6POlZGErXuB4H
         v03rsMlgNz+L2NSbHUtRpsXo8megJGJsTgeTga06/jQR3cc5KUZFNR7H313emDN8dX0m
         RcLLHDgRTUidmSfiO8ohaYncSkNN1lSkvSLk95JSpybBR9jdbLWXOvcgq5IUNLHIdXtD
         o3Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hMI67sQPeUgCqI6gVSp7RvI1U4SilSZrz97exEnZLF0=;
        b=dPSRxGRYT95KZK39QUqqpkJt9fzE+uWoP29FXw/oHGtbA84tiDe9Ir8qctJASTMdtj
         8JO2HRuOWrsDfgfp3jlICtCToXkxLVb5t/07TBJJSkFyc6olxVusnSrT0mOqaLDQ+F1T
         npeF/3q5Z6CMlWoiNFjs7+7AMynhytIhTym7PRq6RxDta4zXJ9hEXW+QO5K2OrPSrsYV
         ofUfRHj2nowrwxlBv/XAAI1JoqYrY9mjIcp2zI06CVroISawx3UvOXoa8MdaSlM8A9Zf
         /OqlgdinbBSNqzCYRwIdCRioj51Hz4DTZey557WjllcFYMAx7RiWYCAEB8cGCNhJOUgV
         lo6g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXOYWvfJoX+/A3YZzfiIVYzANZ6+eRLMeyc3hRcyJxsoNkhVfNg
	blo8wJB+JF9XBFzG/J2sohA=
X-Google-Smtp-Source: APXvYqyVh4219izOdIRX+wS6irai9mLWFHsb8QMsHJijo8rQwxoCHDY93MP0ErRh+vZqpixA8CtFOQ==
X-Received: by 2002:a17:906:1496:: with SMTP id x22mr51688309ejc.191.1563763396915;
        Sun, 21 Jul 2019 19:43:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:ac62:: with SMTP id w31ls8856203edc.10.gmail; Sun, 21
 Jul 2019 19:43:16 -0700 (PDT)
X-Received: by 2002:a50:aeee:: with SMTP id f43mr58670496edd.221.1563763396500;
        Sun, 21 Jul 2019 19:43:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563763396; cv=none;
        d=google.com; s=arc-20160816;
        b=YSVt41oCaPFwezEUL00w1xuLjfCAR8+iC0zmc381vHezFMM+VVaTCO6cmV8Pmd8tSk
         LqBeMsvtbAGsmJRxcUGEMNYXQ0/TXQ8s7bDeRnKT6vkq/Yx/iSyMaqW7evGgW6rk5yWW
         rnJd+c8GGP3uvtAOU9s7aa70Ii1uySElQrZke52uZnbMAMlCOSR7c5cuE5ezeNRTJRGh
         Gigfx3CdY3xZ4FAjtcpTB89lhdmwHhO6oHN6wYgGqtMNnmzoasM8h7stc/OAX537d6Gb
         kWa692JXX7LxGLbpNg2jHjLPi/RvsyF35j9B1mfxSDK71+e0mXug0Bo4BbYjnuagfg8l
         h2/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=aCIw0Vy9KSLKWPzknfpX/7qQ/M+ZYVeRzfb1AdszhK8=;
        b=N37LsY1EYuTNpfvKCkt2uZbNTkvs8o365eLsI/FfG/ZuJpeErDbKcyNAhDhW3Fapap
         JG4MaBboX/Fn0RTLLx/h3D5AkcF0R6p9eNU3oS1dZMhMs2LV/O5T7TyCEX7F9YjFcB1k
         l29HV7KbwwURxgXVEEXKuyW44yGNwl+ocKMlULs55FYK6PjH34wanqet+e5V92YRuRID
         Hhjk3CTvo6hxMcH4D5NOc2il4MOTe65uTbY+6uP72/sdWSBvGbiX0TYuupYjZsR7Z6K8
         7EBht2BAVGP6vEpnFe857Hf2AE+BOoswHE7LEhCJf5SrH7kLG54/4a071UsrfYsGFDrN
         WqTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Xp2/lYdr";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id b39si2166146edb.1.2019.07.21.19.43.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Jul 2019 19:43:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id 207so33596855wma.1
        for <clang-built-linux@googlegroups.com>; Sun, 21 Jul 2019 19:43:16 -0700 (PDT)
X-Received: by 2002:a7b:c0d0:: with SMTP id s16mr30063516wmh.141.1563763395957;
        Sun, 21 Jul 2019 19:43:15 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id 91sm80347851wrp.3.2019.07.21.19.43.15
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sun, 21 Jul 2019 19:43:15 -0700 (PDT)
Date: Sun, 21 Jul 2019 19:43:13 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Tyrel Datwyler <tyreld@linux.ibm.com>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v2] PCI: rpaphp: Avoid a sometimes-uninitialized warning
Message-ID: <20190722024313.GB55142@archlinux-threadripper>
References: <20190603174323.48251-1-natechancellor@gmail.com>
 <20190603221157.58502-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190603221157.58502-1-natechancellor@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="Xp2/lYdr";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Jun 03, 2019 at 03:11:58PM -0700, Nathan Chancellor wrote:
> When building with -Wsometimes-uninitialized, clang warns:
> 
> drivers/pci/hotplug/rpaphp_core.c:243:14: warning: variable 'fndit' is
> used uninitialized whenever 'for' loop exits because its condition is
> false [-Wsometimes-uninitialized]
>         for (j = 0; j < entries; j++) {
>                     ^~~~~~~~~~~
> drivers/pci/hotplug/rpaphp_core.c:256:6: note: uninitialized use occurs
> here
>         if (fndit)
>             ^~~~~
> drivers/pci/hotplug/rpaphp_core.c:243:14: note: remove the condition if
> it is always true
>         for (j = 0; j < entries; j++) {
>                     ^~~~~~~~~~~
> drivers/pci/hotplug/rpaphp_core.c:233:14: note: initialize the variable
> 'fndit' to silence this warning
>         int j, fndit;
>                     ^
>                      = 0
> 
> fndit is only used to gate a sprintf call, which can be moved into the
> loop to simplify the code and eliminate the local variable, which will
> fix this warning.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/504
> Fixes: 2fcf3ae508c2 ("hotplug/drc-info: Add code to search ibm,drc-info property")
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
> 
> v1 -> v2:
> 
> * Eliminate fndit altogether by shuffling the sprintf call into the for
>   loop and changing the if conditional, as suggested by Nick.
> 
>  drivers/pci/hotplug/rpaphp_core.c | 18 +++++++-----------
>  1 file changed, 7 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/pci/hotplug/rpaphp_core.c b/drivers/pci/hotplug/rpaphp_core.c
> index bcd5d357ca23..c3899ee1db99 100644
> --- a/drivers/pci/hotplug/rpaphp_core.c
> +++ b/drivers/pci/hotplug/rpaphp_core.c
> @@ -230,7 +230,7 @@ static int rpaphp_check_drc_props_v2(struct device_node *dn, char *drc_name,
>  	struct of_drc_info drc;
>  	const __be32 *value;
>  	char cell_drc_name[MAX_DRC_NAME_LEN];
> -	int j, fndit;
> +	int j;
>  
>  	info = of_find_property(dn->parent, "ibm,drc-info", NULL);
>  	if (info == NULL)
> @@ -245,17 +245,13 @@ static int rpaphp_check_drc_props_v2(struct device_node *dn, char *drc_name,
>  
>  		/* Should now know end of current entry */
>  
> -		if (my_index > drc.last_drc_index)
> -			continue;
> -
> -		fndit = 1;
> -		break;
> +		/* Found it */
> +		if (my_index <= drc.last_drc_index) {
> +			sprintf(cell_drc_name, "%s%d", drc.drc_name_prefix,
> +				my_index);
> +			break;
> +		}
>  	}
> -	/* Found it */
> -
> -	if (fndit)
> -		sprintf(cell_drc_name, "%s%d", drc.drc_name_prefix, 
> -			my_index);
>  
>  	if (((drc_name == NULL) ||
>  	     (drc_name && !strcmp(drc_name, cell_drc_name))) &&
> -- 
> 2.22.0.rc3
> 

Hi all,

Could someone please pick this up?

Thanks,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190722024313.GB55142%40archlinux-threadripper.
