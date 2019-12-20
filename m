Return-Path: <clang-built-linux+bncBDLPBFGXVMCRBC6O6DXQKGQEOCFOIZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id B49F11272ED
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Dec 2019 02:42:36 +0100 (CET)
Received: by mail-vs1-xe39.google.com with SMTP id j8sf802667vsm.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Dec 2019 17:42:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576806155; cv=pass;
        d=google.com; s=arc-20160816;
        b=rpDmkAYuYTuKldihxX0Nc7JnDsTvDUJw0b9b9xywkU87M8H5aeRf7a/K3QYBAdBtqk
         s2zK2UiqDPGcZHUusPshbl+/gO61cFkHOWw8TZQnSOuKZDZMymMwewcRLHSVac0zWGXH
         iiyKtIlF4e+SCf78Swqvnu1+cxUWoRsniw9I8ZPlQqvWu+crC3rMp4UriXi0i69AMk8H
         f+5ZnQx2IKk/oFKttqKwSQjbLKcGWg9eayvNPvuEcBcj+CdXL6iRMo/GX7jf2oNEd5As
         2Ku+X3j5ywrLluzjlOWRXG7miGhhngPkUQ9TXoRvQ2elivaK6rOxY9VIMrENMpENAdN2
         YxLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=525xgqxwBP6oH15HtgLW57zs52Bj9ymlz2aykRuvGIY=;
        b=UvlIPxzMl9jm8CKfgPSVy6kXXr3DB5vv00AXHjqm1gezXGMJ8C0WazPdfQ408SUnUv
         89zmtx3uid50W0zINuAjrWSnDncenEc0AMAjHoBe1ixuy346grPQNR75iGLBsCfdFglm
         7I6ilrUouFSdGhgl07QoTZ/SeepAfkQ2fHg9RE2gV9wRtxlB6rkxfOqmnGgZhR97n5DT
         jlE4hsriNF427yabTsi4XbAYMGgD0OVtnTefkGi5rIGYnIiSfsaMWr1dKbDDUQXLBt9K
         hmdZKFexzz79VdhuAlYpCWGTp0UzPc+JdhQvDFM1tMeHAxf6clYV1VnflttL8JOGtglm
         JjKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hDmKdmCE;
       spf=pass (google.com: domain of smfrench@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=smfrench@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=525xgqxwBP6oH15HtgLW57zs52Bj9ymlz2aykRuvGIY=;
        b=Hd7PBbs+rEpWTWGXPi+7Kz2/9Je9QKN26MkGap089kht8DcVxLj0o7KYFAEuzBnkl0
         lX+ifRfkcbV9lGpNaxFfvH51FJ2mCABVGLhvi37gWzrnqaj2JwBx/5msRIlST5gvtswL
         c29AQoU2trjES8ichUwbExOKiQzJ9pqJhQcbDVloosEOa2Gt4L2L2dmvQ1uw4gFRqYSJ
         V7RocXMDaWEyTIJ8cJZ6c68AjYXNKSGO7oVujNAZ4dB5fLegL67b8HeC3KPwQVgSilgh
         NjaIhTUWZSq3hgl4ERLPNOD6sgNX6GrrTGPTTHvE59YmFNpgqRJKsX25KcALWnJzs6HJ
         3wIw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=525xgqxwBP6oH15HtgLW57zs52Bj9ymlz2aykRuvGIY=;
        b=RGcCx9WDB1dcW8mA9NzYxeKxVvGNwHEC9VUTnx632KVPrKKiWkXWCWnXb6qe0Gitdh
         zFTQnrmr1OacBPGRJds+ONpn+BpAZclouNkVGV3Xjr4Rtywoj74UvnNUrsdAjJfzEVFF
         UtrF/QrKvXGNyz7dIEt2Nr4+kWB7/MlduwFJ8iajEr5N6vumBQoPp9ePgTTNsHpjPk3N
         dFzKuz6u3RYNsUPzkCoB8c92LGcMDhbTb21p74oBSshOAo6dICX6V06N6p8uirMXHaYp
         fP4vws8YX/genWvqK57mUj2/wn14dEs+wkqFC6elZei6TqzRdA7pVgSJ7iX6rKaUEQgJ
         HGOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=525xgqxwBP6oH15HtgLW57zs52Bj9ymlz2aykRuvGIY=;
        b=Wsqse1YPMzPoZV2WRrhgD8XaCBqNlhCtOmdwhODlERnhxGjiRZy3lxWCv9389g0SMY
         hDkDRK3NyAhljiFj5pzk2nDvK4INYGblSLCjlb2yET0f6JKR4RGnF0VA1cElR/L8Cuo4
         K49uMxtojns4Tdb/N9RkwMacl0LPneMG7PRw1wY4ysXGdwUeVU2ktIsmC0G+PrEY+SSG
         HFnseQoPft1enwV1wYbJaeNIwgc3OvKvnaJ4OSdfzQNnCRoLDtLJMSvj7wv6A+uT5dq6
         eDBWJR+baXcNgFaTNaH3Um2ksOBwSJ6bCX8u3RC9cTMuhTMYhfraLR3Pje0SXZVUuydb
         RtbQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVlliaV89EiltYOWOGH8UjsZr6w7165RN01XTOqGpLnEEp3ybww
	61VInMmFN7JWxyKNlntaC7Q=
X-Google-Smtp-Source: APXvYqxc5g/sCvRX5QPwCLkpheRb7zjlBiQ9RodZlEWd7Bl1GPa/DPBzNdMfs2UAxrp83ysZRjiR7g==
X-Received: by 2002:a67:af11:: with SMTP id v17mr6644040vsl.99.1576806155766;
        Thu, 19 Dec 2019 17:42:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c107:: with SMTP id d7ls701248vsj.16.gmail; Thu, 19 Dec
 2019 17:42:35 -0800 (PST)
X-Received: by 2002:a05:6102:243b:: with SMTP id l27mr6925544vsi.230.1576806155467;
        Thu, 19 Dec 2019 17:42:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576806155; cv=none;
        d=google.com; s=arc-20160816;
        b=SyioZoCoYPnNGl7LRSvF2aq9esA3v0lopIS0f3wveMgNDw1GXAAmbLThPZdDEgkvBC
         jVktVFVUIgdTHR+7a5htAwxMCqDTv0rxW6qMpJdrUDmPMBLPz8FBy4yad4KfUPfoUPF2
         YqSZ46e63oRB1xE9irmQIx/+9f2Mv5/c9Kt8iXsWJostoPHORhtly2DSgkVFHaHXkocC
         Grh1b+mR3turlg9lSJioA5kPb0Rwp/7NoV0/f45Caxxz/NxxZ9g1HfDafXaYgbs3IzSB
         TD0ksxy+VskGXBwtHELHGW0JPUkKJYj29cSL1E0j2e/pGtm/DOHAfvaN5lZAXGv2B6nd
         T8cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=sfr0DkASOT0MoT13/9e3piyeEKgEAbIuAROVb11tB/8=;
        b=XS3fwJ1owrRRJRB5bH0sG3DNCiIjL+SX5eGbBEafbnbqLA5ECNA6V3WSbAwzV7LVmm
         Bph2SxHqASmDruQYNSsvLA6oPaX+/qEH54zJnLc64zRW62T3u+MX+gDeiu0DAHYBC8N4
         KVKrSa/DdwMPedGnmVAchURpTdBNievbR7uUoG5u2TPABb585NuGB6/9LWZEvziqZO2V
         NEcYioxwWIywi0umQsudDXBgYosz9IkR6Iqx3ZSoFT8ICByP9I31dUFbp+XXBuyq5VKD
         LFZ4q5bAz0rYN3co+IUW8+i7T5MNKnbU3Mgy3tF5MtfRBufenYu7TmeCUTDSRKl3HsHY
         +saQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hDmKdmCE;
       spf=pass (google.com: domain of smfrench@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=smfrench@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x144.google.com (mail-il1-x144.google.com. [2607:f8b0:4864:20::144])
        by gmr-mx.google.com with ESMTPS id x127si349234vkc.0.2019.12.19.17.42.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Dec 2019 17:42:35 -0800 (PST)
Received-SPF: pass (google.com: domain of smfrench@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) client-ip=2607:f8b0:4864:20::144;
Received: by mail-il1-x144.google.com with SMTP id c4so6566069ilo.7
        for <clang-built-linux@googlegroups.com>; Thu, 19 Dec 2019 17:42:35 -0800 (PST)
X-Received: by 2002:a92:4883:: with SMTP id j3mr9930949ilg.272.1576806154739;
 Thu, 19 Dec 2019 17:42:34 -0800 (PST)
MIME-Version: 1.0
References: <20191218030451.40994-1-natechancellor@gmail.com>
In-Reply-To: <20191218030451.40994-1-natechancellor@gmail.com>
From: Steve French <smfrench@gmail.com>
Date: Thu, 19 Dec 2019 19:42:23 -0600
Message-ID: <CAH2r5mtr=d-LYD_EQ_OQVX5s8QziHvAYNmRnwMpVjeb4JiHMYw@mail.gmail.com>
Subject: Re: [PATCH] cifs: Adjust indentation in smb2_open_file
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: CIFS <linux-cifs@vger.kernel.org>, 
	samba-technical <samba-technical@lists.samba.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: smfrench@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hDmKdmCE;       spf=pass
 (google.com: domain of smfrench@gmail.com designates 2607:f8b0:4864:20::144
 as permitted sender) smtp.mailfrom=smfrench@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

merged into cifs-2.6.git for-next

On Tue, Dec 17, 2019 at 9:04 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> ../fs/cifs/smb2file.c:70:3: warning: misleading indentation; statement
> is not part of the previous 'if' [-Wmisleading-indentation]
>          if (oparms->tcon->use_resilient) {
>          ^
> ../fs/cifs/smb2file.c:66:2: note: previous statement is here
>         if (rc)
>         ^
> 1 warning generated.
>
> This warning occurs because there is a space after the tab on this line.
> Remove it so that the indentation is consistent with the Linux kernel
> coding style and clang no longer warns.
>
> Fixes: 592fafe644bf ("Add resilienthandles mount parm")
> Link: https://github.com/ClangBuiltLinux/linux/issues/826
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  fs/cifs/smb2file.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/fs/cifs/smb2file.c b/fs/cifs/smb2file.c
> index 8b0b512c5792..afe1f03aabe3 100644
> --- a/fs/cifs/smb2file.c
> +++ b/fs/cifs/smb2file.c
> @@ -67,7 +67,7 @@ smb2_open_file(const unsigned int xid, struct cifs_open_parms *oparms,
>                 goto out;
>
>
> -        if (oparms->tcon->use_resilient) {
> +       if (oparms->tcon->use_resilient) {
>                 /* default timeout is 0, servers pick default (120 seconds) */
>                 nr_ioctl_req.Timeout =
>                         cpu_to_le32(oparms->tcon->handle_timeout);
> --
> 2.24.1
>


-- 
Thanks,

Steve

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAH2r5mtr%3Dd-LYD_EQ_OQVX5s8QziHvAYNmRnwMpVjeb4JiHMYw%40mail.gmail.com.
