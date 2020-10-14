Return-Path: <clang-built-linux+bncBC54HEHN6ADRBNGBTH6AKGQE77MEA6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id D268228D869
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Oct 2020 04:21:41 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id d1sf292764qtq.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 19:21:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602642100; cv=pass;
        d=google.com; s=arc-20160816;
        b=uFo+zBhpSrvyhslDRKXrNOGy8ntAzZ0N/e668moZ1f/JDOm488pHP61ek0c0akaq+j
         w859gv9ZutSU0M7eIdtROx4s/IUU5na5DEaeqlq819xUoJYiud3BPVYK8x/j/SKfaokx
         PW/k4DnRkZGg1gaxH0Bd6MUiEmF2Km2SNbsOWbrFYU45sUwPlNUJn+l/o0CseLZYB12Q
         JM0f8LoCy0Oyi2cFVb5bKJOexfZxsYzKBm9IUHKNTRcO7ePvXAQY0Ztq1XEU8R27J9/U
         iPP+FxowXF/QLCJGV7Q+G74XRpePIDEfwPBpm3ev+Zlxo30iEiO5RPixddUTD8IuqCbN
         Ao7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:authenticated-by:sender
         :dkim-signature;
        bh=LL80BRMwlPpy4BcdFBw6eQmuBtyqZs5X5rTEADPofQw=;
        b=R9T9eRSfmhtA/DymRKbq0NYEW5kM8tB7DrjFRTuCJUxvRn7ftoT9GWoxnrlW8wKVAr
         KAonLyH8EWGs2O1J1XWyAbWFfT3E6nWn8KSKE3KlRqd1rLv654tFR/G0AK3lRvt2CpfN
         v6up68fcXTOqGckU8EbSa2RuZMbbyrqmVukQUy5N1n3vSiL5BmmbT9QUsCmWVzqyiLet
         XPRkQ6fIePqCY+9ZEUoP/DbtdDnYwXDwbQB7LfnyrKjMsYpYR+HD3wOItDePdBaHMKIW
         5q9yqLqlYpiJ2YziuYNVQoakRnQM6R9LKUL9l+Ovyh2Y2pN07Fb5vMrsgnDCy6IrtcAT
         5yQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of tehuang@realtek.com designates 211.75.126.72 as permitted sender) smtp.mailfrom=tehuang@realtek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:authenticated-by:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LL80BRMwlPpy4BcdFBw6eQmuBtyqZs5X5rTEADPofQw=;
        b=S27q5mWOdy6Pc71uREEB34iD2tW26aIy9Mto0HAMw5CKn0I7B0dlMd4pt0S2NtOExh
         s3IYb6HellSUkO3Xr/fPtuHE9prveZ97ubpY/0jAXD/hR11eunD7XYfee9OM8g1LLHSX
         t5wsq9Ky8Yot2p9CskGcR5ZqDs3OzwaPuuzI597RMCN8sWJG2dit4dsJkDjRG14R8ufy
         rEcKPvTqVK0QbAjNkHzAqG8aon0Fi5d7+LIqknWqF5DNy72wyQO7yaAezfp963N4O2WM
         YhrTkrj23/mZpRSWVSNtud5znKImjKLsY3fQNdJOWDMtAB+jJBGPdPG9CtJUiY+nlCmq
         BK6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:authenticated-by:from:to:cc:subject
         :thread-topic:thread-index:date:message-id:references:in-reply-to
         :accept-language:content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LL80BRMwlPpy4BcdFBw6eQmuBtyqZs5X5rTEADPofQw=;
        b=LQQtmMxAEDnvXb9YiGk22xyapla6tA7KKJd69II6CCCzoIjyMflmRgr2/VCGG2VA0e
         h80PCARDzn7TSip4J36CMDIVrLOsq4ZJ10dLqJW/yLa13VMqps7L89oCgJaOef7kExox
         G7CJ2wuqTfXLSuXVgBVoo+Muy470GX8WCWDnY07yy8ngz+LaAmzEjF1Eb07ystylyyBH
         UZMv+cjfjaOtn1/qN/9j2dQQ6cjTHXoEn3jka+zvKcHDa5tpLkQh3buiFwU2xT6fNjdM
         ib2Q6YxavusH0e2CPG/HxlV2dyizmpqeoPMBc15sQ22sASKRv6ImUDJbV9gww0tthZzc
         gXrA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531I9l8rbzLUApeCu0Nas/dBNnkrvkqqRv8eIoZs/ZPSLYGWbN19
	0E+JyiqhSev7g4OKDpAPAaE=
X-Google-Smtp-Source: ABdhPJyiTc//QVhLJgskq9K6ShxHbTMDEa/+dUmyI44DqwNLBO3arPcYbbUIAuKRSj7iwFradBsxkA==
X-Received: by 2002:a37:a54:: with SMTP id 81mr3001143qkk.293.1602642100630;
        Tue, 13 Oct 2020 19:21:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:71cf:: with SMTP id i15ls639114qtp.7.gmail; Tue, 13 Oct
 2020 19:21:40 -0700 (PDT)
X-Received: by 2002:aed:3bb8:: with SMTP id r53mr2862317qte.241.1602642099960;
        Tue, 13 Oct 2020 19:21:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602642099; cv=none;
        d=google.com; s=arc-20160816;
        b=mE7XZVlYS8K7RIaud6X7XDW9Ns5gtkt9IuGgAIgwfGgSrG2xEsI/I38uH/G3kVnRkb
         Emli3sE7JY0rdQWH1InuH70r4q1Z8hpWGP/b1YtLA0194DowBxVftX9bc3pEvcFB5HMd
         1Jd7NFclQblrGdozcAwnKPwTIOGWDpKWbWGfzpLx63h/65rOdIhLu9q63SHkzt3bt5O+
         zNnaYDXA36hujf19K2FSbH+E/0QaFTxi1vIUzg279J1H8RdA4/zraN5bveEk4bZ825D5
         GeWPX55ABeIsaPVSuiMmZ+HD39k6V8dpxIe/dt5u8TMstohZepR9dHXFuPrACbQZeeIX
         W2ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:authenticated-by;
        bh=nTTnsserphYbA3fu+H9y+AT4lR7bg4iMeBRf+O9i4d4=;
        b=pepfokLA4viRUFIhLFUbC7h6PemEFcwoNa1bv7sPfkBh6YO8hNX+ql6bQNnXPuMlQJ
         PMIkVP+B+X1h1IH5SOURLzs5IJ6MCsq7NNdpe7lRYqaqCj/eoATb9NnNo3Ys6h58FgKF
         vLrCUQGvjRCElMFuBkZ0HYJMKtsXVAFw04BEo6N0RyLoCxQSsrAHh62f5UJG0wcqDrFr
         NQv0SCSWk6XC884yIrjM/OfJj8tdrb7sHhxYfQwv+Q22cVi3IpBE9hsStpf0APH51xX6
         u0Nr2OYMP06RcmfEbZBCASMHhLctkSp/EeYzzMJmipASCCwBRLcYWXoBJbI8y22G72Nz
         eYDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of tehuang@realtek.com designates 211.75.126.72 as permitted sender) smtp.mailfrom=tehuang@realtek.com
Received: from rtits2.realtek.com.tw (rtits2.realtek.com. [211.75.126.72])
        by gmr-mx.google.com with ESMTPS id v35si142912qtv.1.2020.10.13.19.21.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2020 19:21:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of tehuang@realtek.com designates 211.75.126.72 as permitted sender) client-ip=211.75.126.72;
Authenticated-By: 
X-SpamFilter-By: ArmorX SpamTrap 5.69 with qID 09E2LJQ50027098, This message is accepted by code: ctloc85258
Received: from mail.realtek.com (rtexmb01.realtek.com.tw[172.21.6.94])
	by rtits2.realtek.com.tw (8.15.2/2.66/5.86) with ESMTPS id 09E2LJQ50027098
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 14 Oct 2020 10:21:19 +0800
Received: from RTEXMB04.realtek.com.tw (172.21.6.97) by
 RTEXMB01.realtek.com.tw (172.21.6.94) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2044.4; Wed, 14 Oct 2020 10:21:19 +0800
Received: from RTEXMB04.realtek.com.tw ([fe80::89f7:e6c3:b043:15fa]) by
 RTEXMB04.realtek.com.tw ([fe80::89f7:e6c3:b043:15fa%3]) with mapi id
 15.01.2044.006; Wed, 14 Oct 2020 10:21:19 +0800
From: Andy Huang <tehuang@realtek.com>
To: "'Nathan Chancellor'" <natechancellor@gmail.com>,
        "trix@redhat.com"
	<trix@redhat.com>
CC: Tony Chuang <yhchuang@realtek.com>,
        "kvalo@codeaurora.org"
	<kvalo@codeaurora.org>,
        "davem@davemloft.net" <davem@davemloft.net>,
        "kuba@kernel.org" <kuba@kernel.org>,
        "ndesaulniers@google.com"
	<ndesaulniers@google.com>,
        "linux-wireless@vger.kernel.org"
	<linux-wireless@vger.kernel.org>,
        "netdev@vger.kernel.org"
	<netdev@vger.kernel.org>,
        "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>,
        "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>
Subject: RE: [PATCH] rtw88: fix fw_fifo_addr check
Thread-Topic: [PATCH] rtw88: fix fw_fifo_addr check
Thread-Index: AQHWn+b1N2QCxO5tOEqVUSS+vGIPsamSt7QAgAOoEfA=
Date: Wed, 14 Oct 2020 02:21:18 +0000
Message-ID: <ca5131599d3940d8a914025821876219@realtek.com>
References: <20201011155438.15892-1-trix@redhat.com>
 <20201012022428.GA936980@ubuntu-m3-large-x86>
In-Reply-To: <20201012022428.GA936980@ubuntu-m3-large-x86>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.69.231]
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-Original-Sender: tehuang@realtek.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of tehuang@realtek.com designates 211.75.126.72 as
 permitted sender) smtp.mailfrom=tehuang@realtek.com
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


> On Sun, Oct 11, 2020 at 08:54:38AM -0700, trix@redhat.com wrote:
> > From: Tom Rix <trix@redhat.com>
> >
> > The clang build reports this warning
> >
> > fw.c:1485:21: warning: address of array 'rtwdev->chip->fw_fifo_addr'
> >   will always evaluate to 'true'
> >         if (!rtwdev->chip->fw_fifo_addr) {
> >
> > fw_fifo_addr is an array in rtw_chip_info so it is always nonzero.  A
> > better check is if the first element of the array is nonzero.  In the
> > cases where fw_fifo_addr is initialized by rtw88b and rtw88c, the
> > first array element is 0x780.
> >
> > Signed-off-by: Tom Rix <trix@redhat.com>
> 
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> 

Thanks for your fix,

Acked-by: Tzu-En Huang <tehuang@realtek.com>

> > ---
> >  drivers/net/wireless/realtek/rtw88/fw.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/wireless/realtek/rtw88/fw.c
> > b/drivers/net/wireless/realtek/rtw88/fw.c
> > index 042015bc8055..b2fd87834f23 100644
> > --- a/drivers/net/wireless/realtek/rtw88/fw.c
> > +++ b/drivers/net/wireless/realtek/rtw88/fw.c
> > @@ -1482,7 +1482,7 @@ static bool rtw_fw_dump_check_size(struct
> > rtw_dev *rtwdev,  int rtw_fw_dump_fifo(struct rtw_dev *rtwdev, u8
> fifo_sel, u32 addr, u32 size,
> >  		     u32 *buffer)
> >  {
> > -	if (!rtwdev->chip->fw_fifo_addr) {
> > +	if (!rtwdev->chip->fw_fifo_addr[0]) {
> >  		rtw_dbg(rtwdev, RTW_DBG_FW, "chip not support dump fw fifo\n");
> >  		return -ENOTSUPP;
> >  	}
> > --
> > 2.18.1
> >
> 
> ------Please consider the environment before printing this e-mail.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ca5131599d3940d8a914025821876219%40realtek.com.
