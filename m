Return-Path: <clang-built-linux+bncBCR5PSMFZYORB4FWTTZQKGQE3FIMOYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3e.google.com (mail-yw1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id D474717EFBD
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 05:45:37 +0100 (CET)
Received: by mail-yw1-xc3e.google.com with SMTP id o79sf19233425ywo.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Mar 2020 21:45:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583815537; cv=pass;
        d=google.com; s=arc-20160816;
        b=ftbMOxCZeKM02qD+SER2lLxGheulvaJ/IXrrb2LIFysulTrTJb6pCVtkmUqQTz9G5Z
         XgsEr2yms7NmMvfq/YFR2NKaJh+A9ASWia9WLVWDfOuaTJuyHBeNlpmOLKNmISW1hQ7l
         Qghu60AAdafA6m3Bono2HPlzFgC5yOGuecf3T7RfhhsWldva48DIm4pPiWs9aB+XrOrI
         /tiZ4Vn3onPfPepdVBcpR6xHR6gZe22fKdsn7CsR+ELODiFyWXXYR6yUIADSdYUYj5UL
         LZeyHkdEogKuOkpx2VGGRyjm0jZwUACelPPaOzvc9laRBCEsndF1ZYt00vygSHLVXfDS
         lKVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:sender:dkim-signature;
        bh=AAWY62xEwkUql0ijzOZXKrtdyQ2Ufb6lCA0GsOk4vOQ=;
        b=cKnQQGD4Tsk057FT95rhw/LHcAMxoz3vQO3U0Io4mWF9i7z6op82dIpM7L1AlJPSM0
         8PPjWQIzyYYMi4p3QmAVRBzcF5O8cbHvGuiYnlMmAbqGknFpUGMKisr9e3eloAB+plq2
         xUqC0VuE5Z+vdvvp8nhElSR1oNYf7Y/8uezBrAs/6QXeSeMqMNt1OzV3POh7cZEcrDZF
         zVAWfWU0X3LajIfk5AEFabNUYoEIYw6Ex4OuqeLck+r+5Tk9qk2+2aYnLUIsOW7nw3Qb
         6/h1WYQwYduyyjeHRk3V8OSfo2QQsZEkP7SrmLrXB39LVajlVnO2VGq+xdri5VinfzLX
         a/mg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=I2gVuXao;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AAWY62xEwkUql0ijzOZXKrtdyQ2Ufb6lCA0GsOk4vOQ=;
        b=NzEJjGaKmOOFxpz8ozOVho/skEmeWt3CxDfWnNFMxms3TIZpUNvwX90f1hAd5l68M/
         EjcDLleJ4UlbBXsBC8N2pX4hgxNSle4RF898ay6NxvVfNf5rzA+2sNu6sQ4ZdS9DCxBX
         cZEEuyIux868uPfZYSOou+TBpUa+0ozFs26wKbEp4FtbVdEd2Gr/ZaNCO0w+BPs1Cya/
         a/Q1n2+IUS93e0Nec8+6c0C0YEnNKqLXotzdkVu4HMHQmJJw2cU52puEeQ1nP43jmo+s
         cv4V6fkCgwFF0xXvVtGZMgaeWE5St4Fj8Ph0CARyZ0jdb3LaNCpYD5bJ6f9JLtsv0usC
         FfyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AAWY62xEwkUql0ijzOZXKrtdyQ2Ufb6lCA0GsOk4vOQ=;
        b=gYPwhRJbqNqCS24Yx6YXu+Rw9XbDpHK9nmZV6M4eGSv8wjFjSyo7pR1fS1ZkcEH+Zk
         /th1rQCvIQ8SM+nZaXsV+sm43CYeSC93kh19s7eue7Fa7U9zAKrx/Fk7mhE+7q4M4R2R
         IVnY3hsumAPe4g0wBB56EkaOAgJAgXdFMI/Lnr3re8HVXg2obBcpTsGIbrbogtj4vqvc
         FEwhjDFfm8IFcUu+CkpofdgcWfFroyyw2jRwY4BfomuvnH1396EL/VXiew9D47/S9jNq
         wRlMRWqnDEpNHcOxUUGdzxXgNLDqO3U/C7PHGcp3vqLDj7BdiU//8AckJtwVXZk8DNAq
         q97Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ35/1O4PbnKdKO1t4KS4Sj2dbEh7jN1zA6xaQCRUoKGgHMsS83d
	97Ow8S2qQQ2IbEFMU+BKNfo=
X-Google-Smtp-Source: ADFU+vuAbt5xtuDQAk/baGUk1KWOD6Z4aOgpItgbTMOxTaueK4jh3oCSw5sYmiWPDilS/kS7Wn2UZQ==
X-Received: by 2002:a25:d00e:: with SMTP id h14mr10206153ybg.236.1583815536867;
        Mon, 09 Mar 2020 21:45:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:984:: with SMTP id c4ls3337758ybq.1.gmail; Mon, 09 Mar
 2020 21:45:36 -0700 (PDT)
X-Received: by 2002:a25:f205:: with SMTP id i5mr20845291ybe.501.1583815536529;
        Mon, 09 Mar 2020 21:45:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583815536; cv=none;
        d=google.com; s=arc-20160816;
        b=jIslmU0fWtcx5dgVcdwKPm/7QM5QKX18Fak9e+ygN+wNC9S+I4r29ZysY8sXyG0pz1
         h2/NpSw0TcOrN3UCS9wVbrpw7IRF7HMAh6gsG/jGpJPt/UiYcCtM+M1OjCLXBSrWAav7
         30LER49cC3OdKr4q/oUeXuilrhUG5eKy45/0982+PZopNAKl1Wp3Vhpn15eRHnfoM3Fo
         w6Ut+RtFDa3WWPIbTa+UU6gKwWzOItanNj212nC9JY1fxPe/2ObO4xdyuBKHDeXebefy
         ykk2MLegjX+UL9ky63K0aLAs+0hV482gNQs6szwd/tu/C5ZH5WPtybHm5q0gQNaC8dgi
         AW4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:dkim-signature;
        bh=u6RribE6FpzIvurlUKEq1OFcn7iiWf1D3EhYEfxqJ28=;
        b=siYWN4cUum5rwrb9aDxPjjZ2zGmVzOj1N7QuCWn/uT9uesVIhOjiRDdvSzQugCpKTN
         VuIg02TAdS3DN1Nwx+hHwGKRNDVO6skMP8mQ8mhWKGRQUCYX9u4pzO9eI573+sTN9pBl
         kNHujMbVnU3OcAx2185Ov47DnxFPE6rsSTuSoPUffg84d5mHr62OSl9KMVksXq4sAcsb
         5DFBv1nnIeL3k5zdRTQrs7u2Al1cA82N80P2Tg+LH12fujwIgKPWGXvxsTexqf5hFqMP
         JOC9aKG5izyB5cQzCInW4mfuCzr6C4rVMlSofvQXVFiLZb8vN8hHkbZEZ057o6LwvGUG
         Huww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=I2gVuXao;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (ozlabs.org. [203.11.71.1])
        by gmr-mx.google.com with ESMTPS id x13si1006864ybs.4.2020.03.09.21.45.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2020 21:45:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) client-ip=203.11.71.1;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 48c2ZJ2vhYz9sRN;
	Tue, 10 Mar 2020 15:44:54 +1100 (AEDT)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Christophe Leroy <christophe.leroy@c-s.fr>, Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, linuxppc-dev@ozlabs.org
Subject: Re: ppc32 panic on boot on linux-next
In-Reply-To: <c084a429-9ea1-7126-f057-8647a2e0dfac@c-s.fr>
References: <CAKwvOdk=eFqRqN0KO1en9wH-NhcvwXbx_ntmUtf8h_xZSd-qKw@mail.gmail.com> <3702b680-a0fc-20dc-027b-518b880f9a41@c-s.fr> <c084a429-9ea1-7126-f057-8647a2e0dfac@c-s.fr>
Date: Tue, 10 Mar 2020 15:44:54 +1100
Message-ID: <875zfcked5.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=I2gVuXao;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted
 sender) smtp.mailfrom=mpe@ellerman.id.au
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

Christophe Leroy <christophe.leroy@c-s.fr> writes:
> Le 07/03/2020 =C3=A0 09:42, Christophe Leroy a =C3=A9crit=C2=A0:
>> Le 06/03/2020 =C3=A0 20:05, Nick Desaulniers a =C3=A9crit=C2=A0:
>>> As a heads up, our CI went red last night, seems like a panic from
>>> free_initmem?=C2=A0 Is this a known issue?
>>=20
>> Thanks for the heads up.
>>=20
>> No such issue with either 8xx or book3s/32.
>>=20
>> I've now been able to reproduce it with bamboo QEMU.
>>=20
>> Reverting 2efc7c085f05 makes it disappear. I'll investigate.
>>=20
>
> Ok, I found the problem. virt_to_kpte() lacks a NULL pmd check. I'll=20
> send a patch for that.
>
> However, if there is no PMD I guess this area is mapped through some=20
> kind of block mapping. Therefore it should bail out of the function throu=
gh:
>
> 	if (v_block_mapped(address))
> 		return 0;
>
>
> Can someone who knows BOOKE investigate that ?

Not sure we have anyone left?

cheers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/875zfcked5.fsf%40mpe.ellerman.id.au.
