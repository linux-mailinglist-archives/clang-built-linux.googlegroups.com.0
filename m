Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBFUSYT4AKGQECE3HO7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 64BC522310A
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 04:12:39 +0200 (CEST)
Received: by mail-qv1-xf39.google.com with SMTP id m18sf4665006qvt.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jul 2020 19:12:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594951958; cv=pass;
        d=google.com; s=arc-20160816;
        b=PiuCol5bwW9DjGJT/Ap0rX2UqyWD2GL2f/sCeOcdLQqlPHZXgLlvOeLcpuFIHbXQld
         llPbmwVvZ+7laUwk6TG6v0T+VuA/BZ2G69hpkSWXkIurX/iK9AIQeaOpwIT5RzpLA1KE
         XnPql03gg1IDXZUU7GrI5/pbSzEQngnP+h30aYr+qpRcZxiarvCV8GRiNtdEHxyKoYJB
         U0sHgZ7DC2rHThER5DYB+zqpGecI/z7VHgF1TKxuJKke3wufG/mZIcuJBdwUNPVXgDNJ
         wRYsl3xm6tq0AAPH6O1Z8YOxPenbwFWOLjBVJQrZlm3bVYMVlMLoosu7Bi4lHNFtRaGP
         qgTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=rGIdw7DkkP4+0ARye4nr7THmrrsSETMTALIHlUNdPl8=;
        b=Kmb6DJgWHxq5AVSMhgwZTpwziViQp4DKSpPWFnY0ZaMjjM61Evpvy6OXSgkbSB1NXu
         aL3PcMJDR8N1hskPJl8fTUO4qk4ESKgwH4IbW+m6NCvGEw1u9ZuLAtKTKhX/KS1gq+4I
         v3K0WHkfAxmHSJa0PTVQTW4BeffeYGVQNWt3eCg+YV7q68WMri8dzDOT75AmPjSANzOi
         1OGqDfT4SKqVMvCmh+q+VkVUuIVwmKEidiop4omWHZAZYPHDdzoRbaemHpW1VcpSMBo2
         BfbI6L2WIQzL6qcgKBLDnurgVkXpjh4j0r3qPNP1ES7ae6HqNO3KzpaWZ1B/pdpV78Ci
         fy9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Z4QPo/np";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rGIdw7DkkP4+0ARye4nr7THmrrsSETMTALIHlUNdPl8=;
        b=Bk5HoHdY3fzqIdnl5pB+0DzDpwI4pGiLp8EtcbErQCuSjWOXdSzZiz+ri9dl1pG5Al
         Hr8oNFA779Y3xV5NWX4BjtbzcuEPuGwaR6E5qdk/gRdT4ujU+yQ2pYfj1KOyQwz+IM7r
         SSovnCS4Wiq0Qf6GopoY6atXSVC/E3o5me9fwsAqVhJ9sLzV0XHxhjSqsRUbZE/kaycO
         orpZx4MzTjNaIwMgyUqx1Nr/tuZV4Vljyw12KUkztWb6eUbQsgBp59B98HhXZlVt98QY
         wDvjhThcKfWx53hEdLyvjEewyPA/NJlm2l8AOz+t5u4LsEM+ljiFPTJMcXycppq6XgFu
         jR8A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rGIdw7DkkP4+0ARye4nr7THmrrsSETMTALIHlUNdPl8=;
        b=Qz138pbIpi/3wa6ubN4UoTqdEr+4yf9ur0RTW1U5RpODKyc36nW6Neb/1G6uqc9OI1
         tVQXLyirqNS/jOpPF8jUQi8dBnOD796ggNlZf6OADe4CIhvm3TV9BG3nPg0Z8xiuko6S
         SRwsQWRtN+F3RPCgB7FJ6Gh0E2FkT4za2xOACFfH/zhNYWFbdfiEvMcIKbzASvDVTT62
         wfv/nrfxtCUiFInuFDopk5tDzB1IL6rx7ZCTUkaxvBnliWwIvWLIRKdqImHYI6FCXHJZ
         cfZ3ulLkq5oOW9S9rEnm3Nh5lAk367bXwhFiYGeqhflGRUpzCAcEQTctqEc0JCXx0fOC
         csJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rGIdw7DkkP4+0ARye4nr7THmrrsSETMTALIHlUNdPl8=;
        b=pFaPiZzSiABNp9bhEbI+NLFU86fZ3MrLjEwShUtpUXCMs2S6Zp+Ix6Yd2JH1TUAoyf
         tQulrDUm8m3/YGG9kXGv0w8LQcdZSSudNYWtl3WLwPorsL6efna0kd0NSW42FSh5EZ19
         gNfF54bVJQJgzp+kq7ZSpgEPag8RgPJAIzuReRHopt1shfPt6GWocbMLzmdKWzduqJ73
         DU+rgq8toB7RcGw+pd7TQmeMQ86oDCcUP5J9PMZyNmkRDoJ03MMKtbQw9Y83DTVc9P5t
         HxGagnKxfe2quMdwySF2SoLGlgi/2A7LXuY84+oEuMVs1remxubvECe90w4ZM9UHChe3
         V2lA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5301Mt5HFauOeeVrV0T4NRDHJjnkw2OYjvti59EKMxiNvXuggm8f
	GVZYqDcFb4XKnNl9yLjTksM=
X-Google-Smtp-Source: ABdhPJybcmkJLEj+SXn4Gw9JnwYUqvfaFApsyIqyLeT90CEs4GB1RA1NgjlV3DRmEr6PCuHr1FQxXw==
X-Received: by 2002:a0c:a306:: with SMTP id u6mr7144401qvu.88.1594951958233;
        Thu, 16 Jul 2020 19:12:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:507:: with SMTP id u7ls3048206qtg.10.gmail; Thu, 16 Jul
 2020 19:12:37 -0700 (PDT)
X-Received: by 2002:ac8:4f4c:: with SMTP id i12mr8355197qtw.17.1594951957862;
        Thu, 16 Jul 2020 19:12:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594951957; cv=none;
        d=google.com; s=arc-20160816;
        b=Pb3rjvKA0u90CHvmgcx/6QpcXYa6RdvCV+Z8OtfUrUPbdn7nUw1UxNv9BLqOARD2hH
         LxH6B2D0/dlS4swuQ4DOu5i8aaPWzU/eCwPVQgkOcQdYjFbmbSoL/OfgIYIiDn9VVgca
         yYKwMEOHjcbEh5q1K8KfldGTdc/wO4FwRW8FC0fpaoOLdHbc3w+SWumYTRYS9Pi4YTIo
         Vl2/WGYx2rPKbdpRw0DPM2mQczrEzSz1wGv91a82N8tmR6XRfkhzjxJjXo3xitF48H44
         36vetPd3BmldeSKYdLSW4diONVd4XhkgvPl33BBxlqanWYtm6Pbxb5rv3ipFV2ZMq+0r
         Puwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=2to7PZ35DmNzJzcrbrv1v/mw1Q6DUkd154VCyr9iHYM=;
        b=dsBGrYE0m9+t2qtFw7ldRXAZlhiXtjOg8Jpf6bajT8tZ8zu0fX6oNvdCHIEubv2pGT
         JCfr/aiJD8WuevA/UiOO4Gdbui0qXWmyLQnsPIaD5V3VVV4OP2clXYT2EnqL0sf9O8VL
         5aHI5gOwNVdvJsoY/wZf9Jy/x3FSiRxcq0yiX8/aQAUeSOOxK5O8luCD+bke1W3lFe2y
         VyRVt8GvjfW8SW//5C+vIUi4HFbOK47BvpZYxYCfcRODscECJeTIeWlwbEpkfuAW72ZP
         TnKWVnyypVXuGcnIE7Hs+sLnVKUhczhd005WOBzzz+3VI269Uyk4WxS/TPXZoLBY30Mz
         1Dfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Z4QPo/np";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id t55si442827qtb.5.2020.07.16.19.12.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jul 2020 19:12:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id j10so6550167qtq.11
        for <clang-built-linux@googlegroups.com>; Thu, 16 Jul 2020 19:12:37 -0700 (PDT)
X-Received: by 2002:aed:2f46:: with SMTP id l64mr8237129qtd.1.1594951957365;
        Thu, 16 Jul 2020 19:12:37 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id u20sm10432214qtj.39.2020.07.16.19.12.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jul 2020 19:12:36 -0700 (PDT)
Date: Thu, 16 Jul 2020 19:12:35 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>
Cc: Jeff Kirsher <jeffrey.t.kirsher@intel.com>, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
	"David S. Miller" <davem@davemloft.net>,
	"Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
	"Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH] igc: Do not use link uninitialized in
 igc_check_for_copper_link
Message-ID: <20200717021235.GA4098394@ubuntu-n2-xlarge-x86>
References: <20200716044934.152364-1-natechancellor@gmail.com>
 <cdfec63a-e51f-e1a6-aa60-6ca949338306@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <cdfec63a-e51f-e1a6-aa60-6ca949338306@intel.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="Z4QPo/np";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Jul 16, 2020 at 07:29:03PM +0300, Neftin, Sasha wrote:
> On 7/16/2020 07:49, Nathan Chancellor wrote:
> > Clang warns:
> > 
> Hello Nathan,
> Thanks for tracking our code.Please, look at https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20200709073416.14126-1-sasha.neftin@intel.com/
> - I hope this patch already address this Clang warns - please, let me know.

I have not explicitly tested it but it seems obvious that it will. Let's
go with that.

Cheers,
Nathan

> > drivers/net/ethernet/intel/igc/igc_mac.c:374:6: warning: variable 'link'
> > is used uninitialized whenever 'if' condition is true
> > [-Wsometimes-uninitialized]
> >          if (!mac->get_link_status) {
> >              ^~~~~~~~~~~~~~~~~~~~~
> > drivers/net/ethernet/intel/igc/igc_mac.c:424:33: note: uninitialized use
> > occurs here
> >          ret_val = igc_set_ltr_i225(hw, link);
> >                                         ^~~~
> > drivers/net/ethernet/intel/igc/igc_mac.c:374:2: note: remove the 'if' if
> > its condition is always false
> >          if (!mac->get_link_status) {
> >          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > drivers/net/ethernet/intel/igc/igc_mac.c:367:11: note: initialize the
> > variable 'link' to silence this warning
> >          bool link;
> >                   ^
> >                    = 0
> > 1 warning generated.
> > 
> > It is not wrong, link is only uninitialized after this through
> > igc_phy_has_link. Presumably, if we skip the majority of this function
> > when get_link_status is false, we should skip calling igc_set_ltr_i225
> > as well. Just directly return 0 in this case, rather than bothering with
> > adding another label or initializing link in the if statement.
> > 
> > Fixes: 707abf069548 ("igc: Add initial LTR support")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1095
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> >   drivers/net/ethernet/intel/igc/igc_mac.c | 6 ++----
> >   1 file changed, 2 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/igc/igc_mac.c b/drivers/net/ethernet/intel/igc/igc_mac.c
> > index b47e7b0a6398..26e3c56a4a8b 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_mac.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_mac.c
> > @@ -371,10 +371,8 @@ s32 igc_check_for_copper_link(struct igc_hw *hw)
> >   	 * get_link_status flag is set upon receiving a Link Status
> >   	 * Change or Rx Sequence Error interrupt.
> >   	 */
> > -	if (!mac->get_link_status) {
> > -		ret_val = 0;
> > -		goto out;
> > -	}
> > +	if (!mac->get_link_status)
> > +		return 0;
> >   	/* First we want to see if the MII Status Register reports
> >   	 * link.  If so, then we want to get the current speed/duplex
> > 
> > base-commit: ca0e494af5edb59002665bf12871e94b4163a257
> > 
> Thanks,
> Sasha

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200717021235.GA4098394%40ubuntu-n2-xlarge-x86.
